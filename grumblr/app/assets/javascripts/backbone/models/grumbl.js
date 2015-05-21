var GrumblModel = Backbone.Model.extend({
  initialize: function(){
    console.log('created grumbl model');
  },
  urlRoot: '/grumbls'
});