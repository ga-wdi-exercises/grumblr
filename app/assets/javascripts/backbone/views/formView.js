var FormView = Backbone.View.extend({
	el: "#form-container",

	tagName: "div",

	events: {
		'click button':'createGrumbler'
	},

	initialize: function(){
		console.log("New grumbler View instantiated");
		this.render();
	},
	render: function(){
		var renderedHTML = HandlebarsTemplates['grumblrs/form']();
		this.$el.html(renderedHTML);
	},
		createGrumbler: function(){
			var newGrumbler = new GrumblerModel ({
		title: $("#form-title").val(),
		body: $("#form-body").val(),
		author: $("#form-author").val(),
		avatar_url: $("#form-avatar-url").val()
	});
			newGrumbler.save();
	}

})