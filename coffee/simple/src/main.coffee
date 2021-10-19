#calculate = (p) => cube(p)

class Parent

  constructor: (name) ->

      @parentField      = "Parent#{name}.parentField.value"
      @field            = "Parent#{name}.field.value"

  func1:                -> console.log("Inside function Parent.func1! parentField: #{@parentField}, field: #{@field}")
  getParentField:       -> @parentField
  getField:             -> @field

class Child extends Parent

  constructor: (name) ->
      super(name)
      @childField       = "Child#{name}.childField.value"
      @field            = "Child#{name}.field.value"

  func1:                -> console.log("Inside function Child.func1! field1: #{@childField}, field2: #{@field}")
  getChildField:        -> @childField

class GrandChild extends Child

  constructor: (name) ->
      super(name)
      @grandChildField  = "GrandChild#{name}.grandChildField.value"
      @field            = "GrandChild#{name}.field.value"

  func1: -> console.log("Inside function GrandChild.func1! field1: #{@grandChildField}, field2: #{@field}")

grandChild = new GrandChild(10)
console.log(grandChild.getParentField());
console.log(grandChild.getChildField());
console.log(grandChild.getField());
grandChild.func1()

