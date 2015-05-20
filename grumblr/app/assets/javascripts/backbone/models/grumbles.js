var Grumble = Backbone.Model.extend({
  urlRoot:"/grumbles",
  defaults:{
    completed:false
  },
  initialize: function(){
    console.log("new grumble")
  }
});
