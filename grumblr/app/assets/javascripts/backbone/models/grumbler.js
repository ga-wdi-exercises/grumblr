var GrumblrModel = Backbone.Model.extend({
  initialize: function(){
    console.log('New Model Created');
  },
  urlRoot: '/grumblrs'
});
