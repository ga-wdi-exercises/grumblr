var GrumbleView = Backbone.View.extend({
    tagName: 'div',
    className: 'grumble',

    events: {
      'click button' : 'deleteGrumble'
    },

    initialize: function() {
      console.log("grumble view created");
      this.listenTo(this.model, 'change', this.render);
      this.render();

    },
    render: function() {
      var renderedHTML = HandlebarsTemplates['grumbles/grumble'](this.model.toJSON());
      this.$el.html(renderedHTML);
    },
    deleteGrumble: function() {
      this.$el.remove();
      this.model.destroy();
    }
});
