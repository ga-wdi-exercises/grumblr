var GrumbleListView = Backbone.View.extend({
  el: '#grumble-list',

  initialize: function() {
    console.log('New Grumble View');
    this.listenTo(this.collection, 'add', this.addOne)
    this.listenTo(this.collection, 'reset', this.addAll)
  },

  addOne: function(grumble){
    var grumbleView = new GrumbleView({model: grumble});
    grumbleView.$el.insertAfter(this.$('span.add'));
    // this.$el.prepend(grumbleView.$el)
  },

  addAll: function(){
    this.collection.each(function(grumble){
      this.addOne(grumble);
    },this)
  },

});