[The arguments object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments)

arguments is an Array-like object accessible inside functions that contains the values of the arguments passed to that function.

    function func1(a, b, c) {
        
        console.log(arguments[0]);
        // expected output: 1

        console.log(arguments[1]);
        // expected output: 2

        console.log(arguments[2]);
        // expected output: 3
    
    }

    func1(1, 2, 3);
