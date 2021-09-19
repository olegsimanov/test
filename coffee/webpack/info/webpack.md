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

### Usage:

####_require_ (Style: CommonJs)

    require(dependency: String)

Returns the exports from a dependency. The call is sync. No request to the server is fired. \
The compiler ensures that the dependency is available.  

####_require.ensure_ (Style: CommonJs)

    require.ensure(dependencies: String[], callback: function([require]), [chunkName: String])

Download additional dependencies on demand. The dependencies array lists modules that should be available. 
When they are, callback is called. If the callback is a function expression, dependencies in that source part \
are extracted and also loaded on demand. A single request is fired to the server, except if all modules are already \
available.

This creates a chunk. The chunk can be named. If a chunk with this name already exists, the dependencies are merged \
into that chunk and that chunk is used.

Example:

    // in file.js
    var a = require("a");
    require.ensure(["b"], function(require) {
    var c = require("c");
    });
    require.ensure(["d"], function() {
    var e = require("e");
    }, "my chunk");
    require.ensure([], function() {
    var f = require("f");
    }, "my chunk");

    /* This results in:

        * entry chunk
          - file.js
          - a
        * anonymous chunk
          - b
          - c
        * "my chunk"
          - d
          - e
          - f
    */



####_module.exports_ (Style: CommonJs)

    // The require function
    function __webpack_require__(moduleId) {

    	// Check if module is in cache
    	if(installedModules[moduleId])
    		return installedModules[moduleId].exports;

 		// Create a new module (and put it into the cache)
 		var module = installedModules[moduleId] = {
 			exports: {},
 			id: moduleId,
 			loaded: false
 		};

 		// Execute the module function
 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);

 		// Flag the module as loaded
 		module.loaded = true;

 		// Return the exports of the module
 		return module.exports;
 	}

This value is returned, when that module is required. It’s default value is a new object.

        
        
    