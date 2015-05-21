var GrumbleListView = Backbone.View.extend({
  el: "#grumble-list",

  initialize: function(){
    this.listenTo(this.collection, 'add', this.renderOne);
    this.listenTo(this.collection, 'reset', this.renderAll);
  },


  renderOne: function(grumble){
    var grumbleView = new GrumbleView ({model:grumble});
    this.$el.prepend(grumbleView.$el);
  },

  renderAll: function(){
    this.$el.empty();
    this.collection.each(this.renderOne, this);
  }

});
