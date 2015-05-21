var GrumblrView = Backbone.View.extend({
  className: 'grumblr',
  tagName: 'div',

  events: {
    'click.finish': 'markComplete'
  },

  initialize: function() {
    console.log("created grumblr view");
    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

  render: function() {
    this.$el.html(HandlebarsTemplates['grumblrs/show'](this.model.toJSON()));
  },

});