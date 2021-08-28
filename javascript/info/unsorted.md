#Object and Function

Use 'typeof' to find the type of an instance, e.g.

    typeof(Function)        => "function"       // a constructor function for a Function object
    typeof(Object)          => "function"       // a constructor function for an object

In JavaScript, **everything** that is not a primitive **is an object**. This includes _functions_, which are basically a _special type of object_ that can be "called" with the () syntax.

##[some explanation](https://stackoverflow.com/questions/54861385/is-object-a-function-in-javascript)

JavaScript provides a number of built-in functions that have various purposes. Two such functions happen to be called _Object_ and _Function_. So in other words Object is a function and thus also an "object" (data structure).

Let's take your function Foo as an example:

    function Foo() {
        var a = "3";
    }

Foo is a function. This means that Foo can be called, eg. var f = Foo(). In this case f will be undefined since Foo doesn't return anything.

Because Foo is a function, it is also an object. This means we can also add and read properties from it:

    Foo.bar = 5;
    Foo.bar++;
    console.log(Foo.bar); // prints 6

Please note that this "object" part of Foo is not related to the contents of the function. That means that the code you declared (var a = "3") is irrelevant. You cannot access var a in any way here because it does not exist until you call the function. If you were to do Foo.a, you are not manipulating var a inside the function; you are working with the property a on the object Foo.

You can however do it the other way around and access properties on Foo inside of the function:

    function Foo() {
        var a = "3"; // a is local to this scope, you cannot get to it from outside
        console.log(a); // prints 3 - local variable a is accessible inside the scope of this function
        console.log(Foo.a); // prints 5 - a is a property on object Foo, and is accessible here
    }

    // var a inside Foo cannot be accessed here
    Foo.a = 5;
    Foo();

# The _new_ operator 
(possible implementation from [here](https://youtu.be/RO1Wnu-xKoY?t=1903))

    function new(func, arguments) {

        var that = Object.create(func.prototype)
        result = func.apply(that, arguments);
        return (typeof result === 'object' && result) || that;

    }

