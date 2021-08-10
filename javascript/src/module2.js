console.log('Initializing module 2')
console.log('Module2 can access window object: ' + window)

function f2() {
    console.log('Inside module2 in function f2()...')
}

const foo2 = "I'm created in the module2.js"

export {
    f2,
    foo2
}