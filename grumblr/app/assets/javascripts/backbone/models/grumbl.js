var GrumblModel = Backbone.Model.extend({
  initialize: function(){
    console.log('New Grumbl Model Created');
  },
  urlRoot: '/grumbls'
});
