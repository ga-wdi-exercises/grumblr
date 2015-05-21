var GrumbleView = Backbone.View.extend({
  className: 'grumble',
  tagName: 'div',

  events: {
    'click.delete': 'markDelete'
  },

  initialize: function(){
    console.log("let's grumble");
    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

  render: function(){
    this.$el.html(HandlebarsTemplates['grumbles/show'](this.model.toJSON()));
  },

  markDelete: function(){
    var view = this;
    this.model.destroy().done(function(){
    this.$el.fadeOut(3000)
    }).fail(function(){
      alert("couldn't delete")
    });
  }
})
