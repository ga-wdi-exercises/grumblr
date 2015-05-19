var GrumblresCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log("Grumblrs collection was created")
  },
  model: Grumblr,
  url: '/grumblres'

})
