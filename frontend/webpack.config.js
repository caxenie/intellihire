var autoprefixer = require('autoprefixer-stylus');
var ExtractTextPlugin = require('extract-text-webpack-plugin');
var webpack = require('webpack');


module.exports = {
    entry: './src/index.js',
    output: {
        path: './builds/',
        filename: 'bundle.js'
    },
    module: {
      loaders: [
        { test: /\.js$/, loader: 'babel-loader', exclude: /node_modules/, query: { presets: ['es2015', 'react'] } },
        { test: /\.styl$/, loader: ExtractTextPlugin.extract('style-loader', 'css-loader!stylus-loader') }
      ]
    },
    plugins: [
      new ExtractTextPlugin('bundle.css')
    ],
    resolve: {
      extensions: ['', '.js', '.styl']
    },
    devtool: (process.env.NODE_ENV == 'development') ? 'eval' : null,
    stylus: {
      use: [ autoprefixer() ]
    }
};
