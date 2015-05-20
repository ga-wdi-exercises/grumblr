var GrumblesCollection = Backbone.Collection.extend({
	initialize: function(){
		console.log("grumble collection created!")
	},
	model: GrumbleModel,
	url: '/grumbles'
})