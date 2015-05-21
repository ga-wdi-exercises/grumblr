var GrumbleForm = Backbone.View.extend({
	el: '#grumble-form',
	events: {
    "click button": "createGrumble"
  },
  initialize: function(){
    console.log("new grumble addition");
    this.render();
  },
  render: function(){
    var renderedHTML = HandlebarsTemplates['grumbles/form']();
    this.$el.html(renderedHTML);
  },
  createGrumble: function(){
    var newgrumble = new Grumble({
      title: $("#form-title").val(),
      body: $("#form-body").val(),
      author: $("#form-author").val(),
      avatar_url: $("#form-avatar-url").val()
    });
    newgrumble.save();
  }
})