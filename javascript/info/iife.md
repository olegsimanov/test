long explanation: http://benalman.com/news/2010/11/immediately-invoked-function-expression/
short explanation: https://stackoverflow.com/questions/8035822/why-write-callthis-at-the-end-of-an-javascript-anonymous-function

Answer 1:
--------

    function Foo() {

        (function () {
            console.log(this);
            // > Foo
        }).call(this);

        (function () {
            console.log(this);
            // > undefined in strict mode, or Window in non strict mode
        })();
    }

    var bar = new Foo;

So, if for whatever reason you use this, it's a way to make the IIFE act as if it were a member function of Foo,
specifically when creating instances of a user-defined object type.

Answer 2:
--------

    function Foo() {

        this.foo = true;
        (function () {
            console.log("Foo = " + this.foo);
            // Outputs undefined
        }());

        (function () {
            console.log("Foo = " + this.foo);
            // Outputs true
        }).call(this);
        
        (function () {
            console.log(this);
            // Outputs undefined in strict mode, or Window in non strict mode
            // Anonymous functions usually default to the global scope
        })();
    }

var bar = new Foo;

I was curious about this as well as I had just seen John Resig's talk about this video. Yoshi had a great answer but
I had to test it in a bit in console log to understand and I thought this modification to his answer might help some
people who were having trouble at first like me:
