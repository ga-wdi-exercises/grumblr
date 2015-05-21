var GrumblesCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log("ready to collect grumbles")
  },
  model: GrumbleModel,
  url: '/grumbles'
});
