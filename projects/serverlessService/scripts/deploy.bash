#!/bin/sh

export T_ENV=${T_ENV-$1};
export T_AWS_REGION=${T_AWS_REGION-$2};
export T_COMMIT_SHA=${T_COMMIT_SHA-"latest"};

printf "
T_ENV: '$T_ENV'
T_AWS_REGION: '$T_AWS_REGION'
T_COMMIT_SHA: '$T_COMMIT_SHA'
"

[[ ! -f serverless.env.yml ]] && cp serverless.env.yml.dist serverless.env.yml
yarn registry -- service pull-env "$T_AWS_REGION" -e "$T_ENV"
yarn sls -- deploy -s "$T_ENV" -r "$T_AWS_REGION"
yarn registry -- service register -e "$T_ENV"
yarn sls -- registry update -s "$T_ENV" -r "$T_AWS_REGION" -v "$T_COMMIT_SHA"
