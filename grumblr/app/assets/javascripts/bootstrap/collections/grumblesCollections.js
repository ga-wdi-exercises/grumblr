var GrumbleCollections = Backbone.Collections.extend({
  initialize: function(){
    console.log("A Grumble Collection was Created");

  },

  model: GrumbleModle,
  url: '/grumbles'

});
