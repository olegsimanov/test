Strict mode
-----------

    use 'strict'

http://ejohn.org/blog/ecmascript-5-strict-mode-json-and-more/
=> it helps you make fewer errors, by detecting more things that could lead to breakages.

Strict Mode is a new feature in ECMAScript 5 that allows you to place a program, or a function, in a "strict" operating
context. This strict context prevents certain actions from being taken and throws more exceptions.

Strict mode helps out in a couple ways:

1. It catches some common coding bloopers, throwing exceptions.
2. It prevents, or throws errors, when relatively "unsafe" actions are taken (such as gaining access to the global object).
3. It disables features that are confusing or poorly thought out.


Strict mode and 'this'
------

In strict mode, the 'this' is just directly set to the given value, which is undefined for a normal call. 
Therefore, .call(this) is used to pass the global object **explicitly** in. You can try this in the console:


    > (function() { "use strict"; console.log(this); })()
    undefined
    
    > (function() { "use strict"; console.log(this); }).call(this)
    Window


It might not make a difference for sloppy code, but it's a good practise and future-compatible