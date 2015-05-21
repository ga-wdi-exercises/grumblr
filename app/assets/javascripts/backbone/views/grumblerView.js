var GrumblerView = Backbone.View.extend({
	className: "grumbler",
	tagName: "div",

	events: {
		'click .delete':'deleteGrumbler'
	},

	initialize: function(){
		console.log("New grumbler View instantiated");
		this.listenTo(this.model, 'change', this.render);
		this.render();
	},
	deleteGrumbler: function(){
		this.$el.remove();
		this.model.destroy();
	},
	render: function(){
		var renderedHTML = HandlebarsTemplates['grumblrs/grumblr'](this.model.toJSON());
		this.$el.html(renderedHTML);
	}
})