var FormView = Backbone.View.extend({
  el: "#grumble-form",

  events:{
    "click .create": "markCreate"
  },

  initialize: function(){
    console.log("form has been instatiated")
    this.render();
  },


  render:function(){
    var renderedHTML = HandlebarsTemplates['grumbles/form']();
    this.$el.html(renderedHTML);
  },

  markCreate: function(){
    var newGrumble = new GrumbleModel({
      author: $("#form-author").val(),
      avatar_url: $("#form-avatar").val(),
      title: $("#form-title").val(),
      body: $("#form-body").val()
    });
    newGrumble.save();
  }
})
