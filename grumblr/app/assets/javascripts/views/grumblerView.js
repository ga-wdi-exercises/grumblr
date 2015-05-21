var GrumblerView = Backbone.View.extend({
	className: "grumbler",
	tagName: "div",

	events: {
		"click": "deleteGrumbler"
	},

	initialize: function(){
		this.listenTo(this.model, "change", this.render);
		this.listenTo(this.model, "destroy", this.render);
		this.render();
	},
	render: function(){
		var renderedHTML = HandlebarsTemplates["grumblers/show"](this.model.toJSON());
		this.$el.html(renderedHTML);
	},
	deleteGrumbler: function(){
		this.$el.remove();
		this.model.destroy();
	}
})