var Grumbles = Backbone.Collection.extend({
	initialize: function(){
		console.log("grumblers are created")
	},

	model: Grumble,
	url: "/grumbles"
})