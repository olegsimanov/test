## [`var`, `let` and scoping](https://stackoverflow.com/questions/762011/whats-the-difference-between-using-let-and-var)

---
ECMAScript 6 introduced the `let` statement.

---
The main difference is scoping rules. Variables declared by `var` keyword are scoped to the immediate function body \
(hence the function scope) while `let` variables are scoped to the immediate enclosing block denoted by `{ }` (hence \
the block scope).


    function run() {

        var foo = "Foo";
        let bar = "Bar";

        console.log(foo, bar); // Foo Bar

        {
            var moo = "Mooo"
            let baz = "Bazz";   
            console.log(moo, baz); // Mooo Bazz
        }

        console.log(moo); // Mooo
        console.log(baz); // ReferenceError
    }

    run();`

The reason why let keyword was introduced to the language was function scope is confusing and was one of the main sources of bugs in JavaScript.

Take a look at this example from another stackoverflow question:

    var funcs = [];
    // let's create 3 functions
    for (var i = 0; i < 3; i++) {
        // and store them in funcs
        funcs[i] = function() {
            // each should log its value.
            console.log("My value: " + i);
        };
    }
    for (var j = 0; j < 3; j++) {
        // and now let's run each one to see
        funcs[j]();
    }

My value: 3 was output to console each time funcs[j](); was invoked since anonymous functions were bound to the \
same variable. People had to create immediately invoked functions to capture correct values from the loops but \
that was also hairy.

## `var`, `let` and Hoisting

While variables declared with `var` keyword are hoisted (initialized with undefined before the code is run) which \
means they are accessible in their enclosing scope even before they are declared:

    function run() {
        console.log(foo);   // undefined
        var foo = "Foo";
        console.log(foo);   // Foo
    }
    
    run();

`let` variables are not initialized until their definition is evaluated. Accessing them before the initialization \
results in a ReferenceError. Variable said to be in "temporal dead zone" from the start of the block until the \
initialization is processed.

    function checkHoisting() {
        console.log(foo);   // ReferenceError
        let foo = "Foo";
        console.log(foo);   // Foo
    }
    
    checkHoisting();

## `var`, `let` and global scope

At the top level, `let`, unlike `var`, does not create a property on the global object:

    var foo = "Foo";        // globally scoped
    let bar = "Bar";        // not allowed to be globally scoped
    
    console.log(window.foo); // Foo
    console.log(window.bar); // undefined

## `var`, `let` and redeclaration

In strict mode, var will let you re-declare the same variable in the same scope while let raises a SyntaxError.

    'use strict';
    var foo = "foo1";
    var foo = "foo2";       // No problem, 'foo1' is replaced with 'foo2'.

    let bar = "bar1";
    let bar = "bar2";       // SyntaxError: Identifier 'bar' has already been declared

