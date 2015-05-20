var GrumbleView = Backbone.View.extend({
	className: "grumble",
	tagName: "div",

	events: {
		'click' :'deleteGrumble'
	},

	initialize: function(){
		console.log("grumblr views");
		this.listenTo(this.model, 'change', this.render);
		this.render();
	}, 

	render: function(){
		var renderedHTML = HandlebarsTemplates['grumbles/show'](this.model.toJSON());
		this.$el.html(renderedHTML);
	},
	deleteGrumble: function(){
		this.$el.remove();
      	this.model.destroy();
    }
})