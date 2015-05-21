var GrumbleModel = Backbone.Model.extend({
  initialize: function(){
    console.log('New Song Model Created');
  },

  defaults:{
    body:"",
    title:"",
    author:"",
    avatar_url:""

  },
  urlRoot: '/grumbles'
});
