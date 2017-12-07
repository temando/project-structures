# Contributing


<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->
<!-- code_chunk_output -->

* [Contributing](#contributing)
	* [Deployment](#deployment)
		* [Manual deployment](#manual-deployment)
	* [Tests](#tests)
		* [Integration tests](#integration-tests)
		* [Unit tests](#unit-tests)
	* [Coverage](#coverage)

<!-- /code_chunk_output -->


## Deployment

### Manual deployment

To deploy the service manually, run the following commands with these shell enviroment variables:

- `T_AWS_REGION`: The region of your Service Registry environment.
- `T_ENV`: Your Service Registry environment name.

```sh
  export T_ENV=foo
  export T_AWS_REGION=us-west-2
```

```sh
  ./scripts/prepare
  ./scripts/deploy
```

## Tests

### Integration tests

Integration tests should be avaliable from this script:

```sh
  ./scripts/test

  or

  yarn test:integration
```

### Unit tests

Unit tests should execute with this command

```sh
  yarn test
```

## Coverage

```sh
  yarn test:coverage
```
