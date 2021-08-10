https://medium.com/@happymishra66/execution-context-in-javascript-319dd72e8e2c
https://www.javascripttutorial.net/javascript-execution-context/
https://www.freecodecamp.org/news/javascript-execution-context-and-hoisting/
https://dev.to/luigircruz/javascript-execution-context-38cn
https://blog.sessionstack.com/how-javascript-works-the-this-variable-and-the-execution-context-12d8f04a40d3
https://blog.greenroots.info/understanding-javascript-execution-context-like-never-before


Execution context (EC)
-------
is defined as the environment in which the JavaScript code is executed. By environment, I mean the value of **this**, **variables**, **objects**, and **functions** JavaScript code has access to **at a particular time**.

Execution context in JavaScript is of three types as:

1. Global execution context (GEC)
2. Functional execution context (FEC)
3. Eval 

Execution Context Stack (ECS)
-------
Execution context stack is a stack data structure, i.e. last in first out data structure, to store all the execution stacks created during the life cycle of the script. Global execution context is present by default in execution context stack and it is at the bottom of the stack. While executing the global execution context code, if JS engines find a function call, it creates a functional execution context for that function and pushes it on top of the execution context stack. JS engine executes the function whose execution context is at the top of the execution context stack. Once all the code of the function is executed, JS engines pop out that function’s execution context and start’s executing the function which is below it.

Scope Chain
-------
The scope chain is a list of all the variable objects of functions inside which the current function exists. Scope chain also consists of the current function execution object.