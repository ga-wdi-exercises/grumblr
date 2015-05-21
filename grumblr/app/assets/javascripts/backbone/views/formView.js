var GrumbleFormView = Backbone.View.extend({
  el: '#grumble-form',
  template: HandlebarsTemplates['grumbles/form'],

  // DOM EVENTS
  events: {
    'click span.new-grumble': 'createGrumble',
    'click span.cancel': 'cancel'
  },

  initialize: function(){
    console.log('New Form View');
    this.render();
  },

  render: function(){
    this.$el.html(this.template());
  },

  createGrumble: function(){
    var data = {
      author: this.$("[name='author']").val(),
      avatar: this.$("[name='avatar']").val(),
      title: this.$("[name='title']").val(),
      content: this.$("[name='content']").val()
    };
    this.collection.create(data, {success: function(){ 
        $('input').val('');
        $('#grumble-form').hide(100);
      }
    });
  },

  cancel: function(){
    this.$el.fadeOut(200);
  }

})