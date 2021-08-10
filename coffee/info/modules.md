CoffeeScript 1.9.8 **doesn't support** ES6 modules
if you try to compile a file with import/export statements you will get this error

        error: reserved word 'import'   
        error: reserved word 'export'   

CoffeeScript 1.12.7 still **does NOT** support ES6 modules, **BUT** compiler does not report a syntax error either. 
Instead it reports **does not resolve modules**; writing an import or export statement in CoffeeScript 1.12.7 will 
produce an import or export statement in the resulting output. It is your responsibility attach another transpiler, 
such as Traceur Compiler, Babel or Rollup, to convert this ES2015 syntax into code that will work in your target 
runtimes.

Also note that any file with an import or export statement will be output without a top-level function safety wrapper; 
in other words, importing or exporting modules will automatically trigger bare mode for that file. This is because per 
the ES2015 spec, import or export statements must occur at the topmost scope.