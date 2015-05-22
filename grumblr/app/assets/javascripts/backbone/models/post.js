var PostModel = Backbone.Model.extend({
  initialize: function(){
    console.log('New Post Model Created');
  },
  urlRoot: 'posts'
});
