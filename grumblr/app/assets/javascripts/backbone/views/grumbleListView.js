var GrumbleListView = Backbone.View.extend ({
  el: "#grumbles",

  initialize: function(){
    console.log("Collection View Created");
    this.listenTo(this.collection, 'reset', this.renderAll);
    this.listenTo(this.collection, 'add', this.renderOne);
  },

  renderOne: function(grumble){
    var view = new GrumbleView({model: grumble});
	this.$el.append(view.el);
  },

  renderAll: function(){
    this.$el.empty();
	  this.collection.each(this.renderOne.bind(this));
  }
})
