var GrumbleView = Backbone.View.extend({
  className: 'grumble',
  tagName: 'div',

  events:{
    'click.finish': 'renderDelete'
  },

  initialize: function(){
    this.listenTo(this.collection, 'change', this.render);
    this.listenTo(this.collection, 'destroy'this.renderDelete);
  },

  render: function(){
    this.$el.html(HandlebarsTemplates['grumbles/show'](this.model.toJSON()));
  },

  renderDelete: function(){
    var view = this;
    this.model.destroy()
      .done(function(){
        view.$el.fadeOut();
      })
      .fail(function(){
        alert("It won't go away!!!")
      });
  }
})
