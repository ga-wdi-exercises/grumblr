var GrumblersListView = Backbone.View.extend({
	el: '#grumblers',

	initialize: function(){
		
		this.listenTo(this.collection, 'reset', this.renderAll);

		this.listenTo(this.collection, 'add', this.renderOne);
		console.log("created Grumblers List View");
	},

	renderOne: function(grumbler){
		var view = new GrumblerView({model: grumbler});
		this.$el.append(view.$el);
	},
	renderAll: function(){
		this.$el.empty();
		this.collection.each(this.renderOne.bind(this));
	}
})