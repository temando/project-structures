import config from '@temando/service-library/webpack/webpack.config';
import { Configuration } from 'webpack';

// tslint:disable-next-line:no-default-export
export default <Configuration> {
  ...config,
  devtool: 'source-map',
  entry: ['source-map-support/register', 'core-js/es7'],
  externals: ['aws-sdk'],
};
