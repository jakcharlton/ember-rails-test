# for more details see: http://emberjs.com/guides/models/defining-models/

Embertest.Book = DS.Model.extend
  title: DS.attr 'string'
  authorName: DS.attr 'string'
  createdAt: DS.attr 'date'
  updatedAt: DS.attr 'date'