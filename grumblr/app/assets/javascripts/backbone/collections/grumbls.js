var GrumblsCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('Lets get ready to GRRUUMMMBBBLLL!!!');
  },
  model: GrumblModel,
  url: '/grumbls'
});
