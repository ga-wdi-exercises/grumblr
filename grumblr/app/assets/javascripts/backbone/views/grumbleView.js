var GrumbleView = Backbone.View.extend({
  className: 'grumble',
  tagName: 'div',

  initialize: function(){
    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

  $("#delete-button").on('click', function(){
    this.model.destroy
  }),

  render: function(){
    var renderedHTML = HandlebarsTemplates['grumbles/show'](this.model.toJSON());
    this.$el.html(renderedHTML);
  }
});
