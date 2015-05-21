var GrumbleView = Backbone.View.extend({
  className: "grumble",
  tagName: "div",

  events: {
    'click .delete': 'markDelete'
  },

  initialize: function(){
    console.log("a new grumble has been instantiated.")
    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

  markDelete: function(){
    this.model.destroy();
    this.$el.remove();
  },

  render: function(){
    var renderedHTML = HandlebarsTemplates['grumbles/show'](this.model.toJSON());
    this.$el.html(renderedHTML);
  },

});
