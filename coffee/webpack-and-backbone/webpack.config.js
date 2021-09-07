(function () {

    'use strict';

    var webpack             = require('webpack');
    var path                = require('path');

    var srcDir              = path.join(__dirname, 'app', 'src');
    var targetDir           = path.join(__dirname, 'build');
    var bowerComponentsDir  = path.join(__dirname, 'bower_components');

    module.exports = {

        context: path.join(__dirname, 'app'),
        entry: {
            'starter': path.join(srcDir, 'starter.coffee'),
        },
        output: {
            path: targetDir,
            filename: path.join('js', 'lg-[name].js'),
        },

        module: {
            loaders: [
                {
                    test: /\.coffee$/,
                    loader: 'coffee-loader'
                }
            ]
        },
        plugins: [
            new webpack.ResolverPlugin(new webpack.ResolverPlugin.DirectoryDescriptionFilePlugin('bower.json', ['main']))
        ],
        resolve: {
            root: [
                bowerComponentsDir,

                path.join(bowerComponentsDir, 'jquery'),

            ],

            extensions: ['', '.js', '.coffee', '.json']
        }
    };
}).call(this);
