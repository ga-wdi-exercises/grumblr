var GrumbleModel = Backbone.Model.extend({

  defaults:{
  body: "stuff"
  author: "me"
},

  initialize:function(){
    console.log("New Model Created")
  }

})
