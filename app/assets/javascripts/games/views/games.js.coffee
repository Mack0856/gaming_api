class GamingAPI.Views.Games extends Backbone.View
  itemView: GamingAPI.Views.Game
  template: JST['templates/games']

  initialize: (options) ->
    @options = options
    @collectionViews = {}

  render: ->
    for view in @collectionViews
      view.remove()
    @$el.html @template()
    @addGames()
    this

  addGames: ->
    for model in @collection.models
      view = @createItemView(model)
      @$el.find('.games-container').append(view.render().el)
      @collectionViews[model.cid] = view

  createItemView: (model) ->
    new @itemView(game: model)
