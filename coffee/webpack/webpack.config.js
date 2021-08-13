(function () {

    'use strict';

    var path        = require('path');

    var srcDir      = path.join(__dirname, 'app', 'src');
    var targetDir   = path.join(__dirname, 'build');

    module.exports = {

        context: path.join(__dirname, 'app'),
        entry: {
            'starter': path.join(srcDir, 'starter.coffee'),
        },
        output: {
            path: targetDir,
        },

        module: {
            loaders: [
                {
                    test: /\.coffee$/,
                    loader: 'coffee-loader'
                }
            ]
        },
        plugins: [ ],
        resolve: {
            root: [ ],
            extensions: ['', '.js', '.coffee', '.json']
        }
    };
}).call(this);
