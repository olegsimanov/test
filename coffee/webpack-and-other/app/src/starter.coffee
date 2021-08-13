'use strict'

_ = require('underscore')
Backbone = require('backbone')

object = {};
_.extend(object, Backbone.Events);
object.on('expand', () => console.log 'expanded' );
object.trigger('expand');