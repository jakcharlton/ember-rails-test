# For more information see: http://emberjs.com/guides/routing/

Embertest.Router.map ()->

  @resource 'books', ->
    @route('new')
