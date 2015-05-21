var GrumblsCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('created grumbl collection');
  },
  model: GrumblModel,
  url: '/grumbls'
});