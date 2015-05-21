var GrumblersListView = Backbone.View.extend({
	el: "#grumblers-list",

	initialize: function(){
		this.listenTo(this.collection, "add", this.renderAll);
		this.listenTo(this.collection, "reset", this.renderAll);
	},
	renderOne: function(grumbler){
		var currentView = new GrumblerView({model: grumbler});
		this.$el.append(currentView.$el);
	},
	renderAll: function(){
		this.$el.empty();
		var view = this;
		this.collection.each(this.renderOne.bind(view));
	}
})