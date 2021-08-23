Backbone = require('backbone')
require('backbone.localStorage')
{MyModel}=require('./mybackbone')
cube=require('./script1')
{Foo, MyClass}=require('./inheritance')

#console.log(object.object)
#console.log(cube.cube(3))

##foo = new Foo()
##console.log('foo.f1=' + foo.f1)
##console.log('foo.f2=' + foo.f2)
##foo.fn()
##
##myClass = new MyClass()
##console.log('myClass.f1=' + myClass.f1)
##console.log('myClass.f2=' + myClass.f2)
##console.log('myClass.f3=' + myClass.f3)
##myClass.fn()
#
#class MyNewClass extends MyClass
#
#  fn: -> console.log("I'm MyNewClass.fn")
#
#myNewClass = new MyNewClass()
#myNewClass.fn()

#model = new MyModel()
#model.set('key1', 'value1', { 'k1': 'v1'})
#model.set('key2', 'value2', { 'k2': 'v2'})
#model.set('key3', 'value3', { 'k3': 'v3'})
#console.log(model.get('key1'))
#console.log(model.get('key2'))
#console.log(model.get('key3'))
#console.log(model.urlRoot())
#model.sync()

attributes =
  string: "String",
  string2: "String 2",
  number: 1337


Model = Backbone.Model.extend({
  defaults: attributes
});

Collection = Backbone.Collection.extend({
  model: Model,
  localStorage: new Backbone.LocalStorage("collectionStore")
});

collection = new Collection();
collection.create({})
collection.create({})
collection.create({})
collection.fetch()