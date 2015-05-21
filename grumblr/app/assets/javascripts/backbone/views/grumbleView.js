var GrumbleView = Backbone.View.extend({
  className: 'grumble',
  template: HandlebarsTemplates['grumbles/show'],

  // DOM EVENTS
  events: {
    'click span.destroy': 'destroyView',
    'click span.edit': 'editGrumble',
    'click span.edit-grumble': 'updateGrumble',
    'click span.cancel': 'cancel'
  },
  
  initialize: function() {
    console.log('New Grumble View');
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },

  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
  },

  destroyView: function() {
    this.model.destroy();
  },

  editGrumble: function() {
    $('#grumble-form').hide();
    this.$('.grumble-form-div').remove();
    this.$el.append(HandlebarsTemplates['grumbles/form'](this.model.toJSON()));
  },

  updateGrumble: function() {
    var newData = {
      author: this.$("[name='author']").val(),
      avatar: this.$("[name='avatar']").val(),
      title: this.$("[name='title']").val(),
      content: this.$("[name='content']").val()
    };
    this.model.save(newData);
  },
  
  cancel: function() {
    this.$('.grumble-form-div').remove();
  }
});