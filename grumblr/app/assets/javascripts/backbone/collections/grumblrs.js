var GrumblrsCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Collection');
  },
  model: GrumblrModel,
  url: '/grumblrs'
});
