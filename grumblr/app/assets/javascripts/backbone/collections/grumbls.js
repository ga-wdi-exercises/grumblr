var GrumblsCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumbls Collection Created');
  },
  model: GrumblModel,
  url: '/grumbls'
});