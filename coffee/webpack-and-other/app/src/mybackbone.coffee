_ = require('underscore')
{Model, Events} = require('backbone')

object = {};
#_.extend(object, Events);
#object.on('expand', () => console.log 'expanded' );
#object.trigger('expand');

#Backbone.sync = (method, model, options) =>
#  console.log('method=' + method + ', model=' + model + ', options=' + options)

Test =

  urlRoot: -> 'zoo'

class MyModel extends Model.extend(Test)

#  set: (k, v, options) -> console.log('...')

#  sync: -> console.log('Sync is being called...')




module.exports = {
  MyModel: MyModel,
  MyObject: object
}