var GrumbrlListView = Backbone.View.extend({
  className: 'grumble',
  tagName: 'div',

  events: {
    'click.post': 'changeGrumble',
    'click.destroy': 'destroyGrumble'

  },

  initialize: function(){
    console.log("a Grumble List View was created")
    this.listenTo(this.model,'change', this.render);
    this.listenTo(this.model,'destroy', this.render);

    this.render();

  },

  render: function(){
    this.$el.html(HandlebarsTemplates['grumblrs/show'](this.model.toJson()));
  },

  destroyGrumble: function(){
    var view = this;
    this.model.destroy()
    .done(function(){
      view.$el.fadeOut();
    })
    .fail(function(){
      alert("couldn't destroy")
    });

    changeGrumble: function(){
      var view = this;
      this.model.destroy()
      .done(function(){
        vi

      })



    }



  }


});
