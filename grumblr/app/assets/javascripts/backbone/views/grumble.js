var GrumbleView = Backbone.View.extend({
  className: "grumble",
  tagName: "div",

  events: {
    "click.delete": "markDelete"
  }

  initialize: function(){
    console.log("a Grumble-grumble has been instantiated!")
    this.listento(this.model, 'change', this.render);
    this.render();
  },

  markDelete: function(){
    this.model.destroy();
    this.$el.remove();
  },

  render: function(){
    var renderedHTML = HandlebarsTemplates['grumble-list/show'](this.model.toJSON());
    this.$el.html(renderedHTML);
  }

});
