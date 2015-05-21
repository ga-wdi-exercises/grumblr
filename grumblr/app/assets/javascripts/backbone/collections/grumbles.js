var GrumblesCollection = Backbone.Collection.extend({
  initialize:function(){
    console.log('New Grumblr Collection');
  },
  model: GrumbleModel,
  url:'/reminders'
});
