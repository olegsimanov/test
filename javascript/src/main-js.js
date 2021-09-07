import * as m1 from './module1.js';
import * as m2 from './module2.js';

console.log('Initializing main module')
console.log('Main module can access window object: ' + window)

const mainObject = {

    value_f11: m1.f11(),
    function_f11 : m1.f11,
    function_f12 : m1.f12,
    function_f2: m2.f2,
    module2_foo2: m2.foo2

}

function main() {

    console.log("Inside module main in function main()...")

}

const { value_f11, function_f2 } = mainObject

console.log(value_f11);
function_f2()

// console.log(window.foo1)

window.foo = "I'm created in the main module"
window.mainObject = mainObject
window.main = main