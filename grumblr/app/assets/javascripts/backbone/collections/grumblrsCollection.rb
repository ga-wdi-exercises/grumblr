var GrumblrsCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumblrs Collection is working.');
  },
  model: GrumblrModel,
  url: '/grumblrs'
});
