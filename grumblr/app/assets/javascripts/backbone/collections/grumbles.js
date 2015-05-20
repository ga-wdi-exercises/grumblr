var GrumbleCollection = Backbone.Collection.extend({
  model: GrumbleModel,
  url: "/grumbles"
})
