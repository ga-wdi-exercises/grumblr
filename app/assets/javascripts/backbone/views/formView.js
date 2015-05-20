var FormView = Backbone.View.extend({
  el: "#form-container",
  tagName: "div",

  events: {
    "click button": "createGrumble"
  },

  initialize: function(){
    console.log( "FormView initialized!" );
    this.render();
  },
  render: function(){
    var renderedHTML = HandlebarsTemplates["grumbles/form"]();
    this.$el.html( renderedHTML );
  },
  createGrumble: function(){
    var newGrumble = new Grumble({
      title: $("#form-title").val(),
      body: $("#form-body").val(),
      author: $("#form-author").val(),
      avatar_url: $("#form-avatar-url").val()
    });
    newGrumble.save();
  }
})
