var PostsCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log('New Posts Collection');
  },
  model: PostModel,
  url: '/posts'
});
