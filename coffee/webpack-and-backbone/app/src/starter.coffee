Backbone = require('backbone')
require('backbone.localStorage')

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
collection.create()
collection.create()
collection.create()
collection.fetch()