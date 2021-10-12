
###[Note](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Inheritance_and_the_prototype_chain): 

---
Following the ECMAScript standard, the notation someObject.[[Prototype]] is used to designate the prototype \
of `someObject`. Since ECMAScript 2015, the [[Prototype]] is accessed using the accessors `Object.getPrototypeOf()` and \
`Object.setPrototypeOf()`. This is equivalent to the JavaScript property `__proto__` which is **non-standard** but de-facto \
implemented by many browsers.   \
It **should not be confused** with the `Function.prototype` property of functions, which instead specifies the [[Prototype]] \
to be assigned to all instances of objects created by the given function when used as a constructor. The Object.prototype \
property represents the Object prototype object.

---

The prototype is an object that is associated with **every** function and object by default in JavaScript. \
The prototype object is a **special type of enumerable object** (prototype's properties **cannot** be iterated \
using **for..in** or **foreach** loop.) to which additional properties can be attached. \
These properties then will be _shared across all_ the instances of it's constructor function.

- **function**'s prototype property is **accessible** and **modifiable** (Function.prototype)
- **object**'s prototype property (aka attribute) is **not visible**. (Unofficial: Object.__proto__ Use Object.getPrototypeOf(obj) method to access prototype object.)

from [here](https://www.tutorialsteacher.com/javascript/prototype-in-javascript)

    function Student() {
        this.name = 'John';
        this.gender = 'M';
    }
    
    var studObj = new Student();
    
    console.log(Student.prototype); // object
    console.log(studObj.prototype); // undefined
    console.log(studObj.__proto__); // object
    
    console.log(typeof Student.prototype); // object
    console.log(typeof studObj.__proto__); // object
    
    console.log(Student.prototype === studObj.__proto__ ); // true

# Object's Prototype

    function Student() {
        this.name = 'John';
        this.gender = 'M';
    }
    
    var studObj = new Student();
    
    Student.prototype.sayHi= function(){
        alert("Hi");
    };
    
    var studObj1 = new Student();
    var proto = Object.getPrototypeOf(studObj1);  // returns Student's prototype object
    
    alert(proto.constructor); // returns Student function 