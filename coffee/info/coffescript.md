https://coffeescript.org/v1/

Syntax
-------

        CoffeeScript	JavaScript
        
        is	                ===
        isnt    	        !==
        not	                !
        and	                &&
        or	                ||
        true, yes, on       true
        false, no, off	false
        @, this	        this
        of	                in
        in	                no JS equivalent
        a ** b	        Math.pow(a, b)
        a // b	        Math.floor(a / b)
        a %% b	        (a % b + b) % b

Everything is an Expression (at least, as much as possible)
-------
You might have noticed how even though we don’t add return statements to CoffeeScript functions, they nonetheless return their final value. \
The CoffeeScript compiler tries to make sure that all statements in the language can be used as expressions.

Even though functions will always return their final value, it’s both possible and encouraged to return early from a function \
body writing out the explicit return (return value), when you know that you’re done.

The `do` keyword
--------

When using a JavaScript loop to generate functions, it’s common to insert a closure wrapper in order to ensure that \
loop variables are closed over, and all the generated functions don’t just share the final values. CoffeeScript provides \
the `do` keyword, which immediately invokes a passed function, forwarding any arguments.

    do ->
        console.log('test')

is compiled into: 

    (function() {
        return console.log('test');
    })();
