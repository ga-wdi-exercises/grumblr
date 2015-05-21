var GrumblsListView = Backbone.View.extend({
  el: "#grumble-list",

  initialize: function(){
    console.log("created grumbl list view" );
    this.listenTo(this.collection, "add", this.renderAll);
    this.listenTo(this.collection, "reset", this.renderAll);
  },
  renderOne: function(grumbl){
    var currentView = new GrumblView({model: grumbl});
    this.$el.append(currentView.$el);
  },
  renderAll: function(){
    this.$el.empty();
    var grumblView = this;
    this.collection.each(this.renderOne.bind(grumblView));
  }
});