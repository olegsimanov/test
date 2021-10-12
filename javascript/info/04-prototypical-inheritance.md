[Prototypal inheritance](https://stackoverflow.com/questions/186244/what-does-it-mean-that-javascript-is-a-prototype-based-language)


**Prototypal inheritance** is a form of object-oriented **code reuse**. Javascript is one of the only "mainstream" \
object-oriented languages to use prototypal inheritance. Almost all other object-oriented languages are classical.

In **classical inheritance**, the programmer writes a class, which defines an object. Multiple objects can be \
instantiated from the same class, so you have code in one place which describes several objects in your program. \
Classes can then be organized into a hierarchy, furthering code reuse. More general code is stored in a higher-level \
class, from which lower level classes inherit. This means that an object is sharing code with other objects of the \
same class, as well as with its parent classes.

In the **prototypal inheritance** form, objects **inherit directly** from other objects. All of the business about \
classes goes away. If you want an object, you just write an object. But code reuse is still a valuable thing, so \
objects are allowed to be linked together in a hierarchy. In javascript, every object has a secret link to the \
object which created it, forming a chain. When an object is asked for a property that it does not have, its parent \
object will be asked... continually up the chain until the property is found or until the root object is reached.

Each function in JavaScript (which are objects themselves) actually has a member called "prototype", which is \
responsible for providing values when an object is asked for them. Having this member allows the constructor \
mechanism (by which objects are constructed from functions) to work. Adding a property to the prototype of a \
function object will make it available to the constructed object, as well as to all of the objects which inherit \
from it.

**Advantages**

There may not be a hard and fast rule as to why prototypal inheritance is an advantageous form of code-reuse. \
Code reuse itself is advantageous, and prototypal inheritance is a sensible way of going about it. You might \
argue that prototypal inheritance is a fairly simple model of code reuse, and that code can be heavily reused \
in direct ways. But classical languages are certainly able to accomplish this as well.

**Sidenote:** @Andrew Hedges makes a good point, that there are actually many prototypal languages. It's worth \
noting that these others exist, but also worth noting that none of them are anything close to mainstream. \
NewtonScript seemed to have some traction for a while, but died with its platform. It's also possible to extend \
some modern languages in ways which add prototypal capabilities.