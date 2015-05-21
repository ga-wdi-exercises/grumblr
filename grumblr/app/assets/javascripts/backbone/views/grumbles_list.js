var GrumblesListView = Backbone.View.extend({
  el: "#grumble-list",

  initialize: function(){
    console.log("created GrumbleList.");
    this.listenTo(this.collection, 'add', this.renderOne);
    this.listenTo(this.collection, 'reset', this.renderAll);
  },

  renderOne: function(grumble){
    var view = new GrumbleView({model: grumble});
    this.$el.append(view.$el);
  },

  renderAll: function(){
    this.$el.empty();
    this.collection.each(this.renderOne.bind(this));
  }
});
