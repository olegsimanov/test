In computer science, an object is a value in memory which is possibly referenced by an identifier.

In JavaScript, objects can be seen as a _collection of properties_. Properties can be added and removed. Property values can be values of any type, including other objects. Properties are identified using key values. A key value is either a _String value_ or a _Symbol value_.

There are two types of object properties: The **data** property and the **accessor** property.

### Creation

Object() is the Object's constructor function:

        Object()        => {}       // When called in a non-constructor context, Object behaves identically to new Object().
        new Object()    => {}       // The new operator lets developers create an instance of a user-defined object type or of one of the built-in object types that has a constructor function.

The Object.create() method creates a new object, using an existing object as the prototype of the newly created object.

        Object.create() => ...      



