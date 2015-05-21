var GrumbleModel = Backbone.Model.extend({
  initialize: function(){
    console.log("SCHWAM GRUMBLE");
  },
  urlRoot: '/grumbles'
});
