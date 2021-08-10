
console.log('Initializing module 1')
console.log('Module1 can access window object: ' + window)

function f11() {
    console.log('Inside module1 in function f11()...')
    return "f11"
}
function f12() {
    console.log('Inside module1 in function f12()...')
    return "f12"
}

window.foo1 = "I'm created in the module1.js"

export {
    f11,
    f12
}