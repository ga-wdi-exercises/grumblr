var GrumbleListView = Backbone.View.extend({
  el: '#grumble',

  initialize: function(){
  	console.log("grumble list view")
  	this.listenTo(this.collection, 'reset', this.renderAll)
	  this.listenTo(this.collection, 'add', this.renderOne)

  },
  renderOne: function(grumble){
  var view = new GrumbleView({model: grumble}) // one view for each model
	this.$el.append(view.$el); 
  },
  renderAll: function(){
  this.$el.empty()
	this.collection.each(this.renderOne.bind(this));
  }
});