[webpack 1.4.13 documentation](https://github.com/webpack/docs/tree/master/tutorials/getting-started)

or

[webpack 1.x documentation](http://www.apimirror.com/webpack~1)


[In depth understanding of webpack module loading principle](https://www.fatalerrors.org/a/in-depth-understanding-of-webpack-module-loading-principle.html)

IMPORTANT:

webpack.config.js file [will be ignored by webpack](https://github.com/webpack/webpack/issues/568) without giving any error message
if you don't add these two entries to the file: 

    module.exports { 

        entry: {
            'starter': path.join(srcDir, 'starter.coffee'),
        },

        and 

        output: {
            path: targetDir,
            filename: path.join('js', 'lg-[name].js'),
        },


        
        
    