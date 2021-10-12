Function() is the Function's object constructor function

    Function()      => creates a Function object        // it expects a function definition as a string, not allowed in the browser, giving EvalError 
    new Function()  => creates a Function object        // it expects a function definition as a string, not allowed in the browser, giving EvalError

the Function constructor function creates functions that **_executes in the global scope only_**.

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

While this code works in web browsers, `f1()` will produce a ReferenceError in Node.js, as `x` will not be found. \
This is because the top-level scope in Node is not the global scope, and `x` will be local to the module.


# Functions as object constructors

**Functions double as object constructors**, along with their typical role. Prefixing a function call with `new` will \
create an instance of a prototype, **inheriting properties and methods from the constructor (including properties from \
the Object prototype)**.[56] ECMAScript 5 offers the `Object.create` method, allowing explicit creation of an instance \
without automatically inheriting from the Object prototype (older environments can assign the prototype to null).[57] \
The constructor's prototype property determines the object used for the new object's internal prototype. New methods \
can be added by modifying the prototype of the function used as a constructor. JavaScript's built-in constructors, \
such as `Array` or `Object`, also have prototypes that can be modified. While it is possible to modify the Object \
prototype, it is generally considered bad practice because most objects in JavaScript will inherit methods and \
properties from the Object prototype, and they may not expect the prototype to be modified.[58]

# Functions as methods

Unlike many object-oriented languages, **there is no distinction between a function definition and a method definition**. \
Rather, the distinction occurs during function calling; when a function is called as a method of an object, the \
function's local this keyword is bound to that object for that invocation.