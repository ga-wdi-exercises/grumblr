var GrumblesListView = Backbone.View.extend({
  el: "#grumble-list",

  initialize: function(){
    console.log( "GrumblesListView initialized!" );
    this.listenTo( this.collection, "add", this.renderAll );
    this.listenTo( this.collection, "reset", this.renderAll );
  },
  renderOne: function( grumble ){
    var currentView = new GrumbleView( { model: grumble });
    this.$el.append( currentView.$el );
  },
  renderAll: function(){
    this.$el.empty();
    var theView = this;
    this.collection.each( this.renderOne.bind( theView ) );
  }
});
