Function() is the Function's object constructor function

    Function()      => creates a Function object        // it expects a function definition as a string, not allowed in the browser, giving EvalError 
    new Function()  => creates a Function object        // it expects a function definition as a string, not allowed in the browser, giving EvalError

the Function constructor function creates functions that **_execute in the global scope only_**.

    typeof(Function)        => "function"       // a constructor function for a Function object

Every JavaScript function is actually a Function object. This can be seen with the code

    (function(){}).constructor === Function

which returns true.

### Difference between Function constructor and function declaration

Functions created with the Function constructor **_do not create closures to their creation contexts_**; they always are created in the global scope. When running them, they will only be able to access their own local variables and global ones, not the ones from the scope in which the Function constructor was created. This is different from using `Global_Objects/eval` with code for a function expression.

    var x = 10;

    function createFunction1() {
        var x = 20;
        return new Function('return x;'); // this |x| refers global |x|
    }

    function createFunction2() {
        var x = 20;
        function f() {
            return x; // this |x| refers local |x| above
        }
        return f;
    }

    var f1 = createFunction1();
    console.log(f1());          // 10
    var f2 = createFunction2();
    console.log(f2());          // 20

While this code works in web browsers, `f1()` will produce a ReferenceError in Node.js, as `x` will not be found. This is because the top-level scope in Node is not the global scope, and `x` will be local to the module.