[webpack 1.4.13 documentation:](https://github.com/webpack/docs/tree/master/tutorials/getting-started)



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


        
        
    