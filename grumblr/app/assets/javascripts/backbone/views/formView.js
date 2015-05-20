var FormView = Backbone.View.extend ({
  el: '#addGrumble',
  events: {
    "click button": "createGrumble"
  },
  initialize: function(){
    console.log("new grumble added");
    this.render();
  },
  render: function(){
    var renderedHTML = HandlebarsTemplates['grumbles/form']();
    this.$el.html(renderedHTML);
  },
  createGrumble: function(){
    var newgrumble = new GrumbleModel({
      title: $("#form-title").val(),
      body: $("#form-body").val(),
      author: $("#form-author").val(),
      avatar_url: $("#form-avatar-url").val()
    });
    newgrumble.save();
  }
})
