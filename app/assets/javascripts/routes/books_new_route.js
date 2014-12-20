Embertest.BooksNewRoute = Ember.Route.extend({
  model: function() {
    return this.get('store').createRecord('book');
  },
  actions: {
    create: function() {
      var newBook = this.get('currentModel');
      var self = this;
      newBook.save().then(
        function() { self.transitionTo('books') },
        function() { }
      );
    }
  }
});