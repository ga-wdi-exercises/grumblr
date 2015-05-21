var GrumblView = Backbone.View.extend({
  className: 'grumble',
  tagName: 'div',

  events: {
    "click button": "deleteGrumbl"
  },

  initialize: function() {
    console.log("created grumbl view");
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.render);
    this.render();
  },

  render: function() {
    var renderedHTML = HandlebarsTemplates["grumbls/show"](this.model.toJSON());
    this.$el.html(renderedHTML);
  },

  deleteGrumbl: function(){
    this.$el.remove();
    this.model.destroy();
  }
});
