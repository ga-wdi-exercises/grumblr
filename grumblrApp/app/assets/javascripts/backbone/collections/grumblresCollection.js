var GrumblresCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log("Grumblres collection was created")
  },
  model: Grumblr,
  url: '/grumblres'

})
