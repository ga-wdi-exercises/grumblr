var GrumbleView = Backbone.View.extend({
  className: "grumble",
  tagName: "div",

  events: {
    "click button": "deleteGrumble"
  },

  initialize: function(){
    console.log( "GrumbleView initliazed" );
    this.listenTo( this.model, "change", this.render );
    this.listenTo( this.model, "destroy", this.render );
    this.render();
  },
  render: function(){
    var renderedHTML = HandlebarsTemplates["grumbles/show"](this.model.toJSON());
    this.$el.html( renderedHTML );
  },
  deleteGrumble: function(){
    this.$el.remove();
    this.model.destroy();
  }
})
