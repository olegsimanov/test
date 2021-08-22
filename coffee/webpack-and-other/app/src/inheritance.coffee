
class Foo

  f1: 'field1'
  f2: 'field2'
  fn: -> console.log("I'm Foo.fn")

class MyClass extends Foo

  f1: 'field1 is overriden'
  f3: 'field3'
  fn: -> console.log("I'm MyClass.fn")

#f = new Foo()
#console.log(f.f1)
#console.log(f.f2)

module.exports = { Foo, MyClass }