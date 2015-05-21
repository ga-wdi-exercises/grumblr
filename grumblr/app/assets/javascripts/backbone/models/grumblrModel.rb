var GrumblrModel = Backbone.Model.extend({
  initialize: function(){
    console.log('New Grumblr Model Created');
  },
  urlRoot: '/grumblrs'
});