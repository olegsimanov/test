// var m1 = require('./module1.js');
// var m2 = require("./module2.js");

console.log('Initializing main module')
console.log('Main module can access window object: ' + window)

// const mainObject = {
//
//     value_f11: m1.f11(),
//     function_f11 : m1.f11,
//     function_f12 : m1.f12,
//     function_f2: f2,
//     module2_foo2: foo2
//
// }

function main() {

    console.log("Inside module main in function main()...")

}

function m1() {

    console.log('Calling m1')

}

m1.e = function m1e() {
    console.log("Calling m1e")
}

m1.e();

// console.log(window.foo1)

window.foo = "I'm created in the main module"
// window.mainObject = mainObject
window.main = main