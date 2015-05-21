var GrumblrsListView = Backbone.View.extend({
  el: '#grumblrs',

  initialize: function() {
    console.log("Created GrumblrListView");
    this.listenTo(this.collection, 'reset', this.renderAll);
    this.listenTo(this.collection, 'add', this.renderOne);
  },

  renderAll: function() {
    this.$el.empty();
    this.collection.each(this.renderOne.bind(this));
  },

  renderOne: function(grumblr) {
    var view = new GrumblrView({model: grumblr});
    view.render();
    this.$el.append(view.$el);
  }
});