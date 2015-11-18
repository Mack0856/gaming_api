class GamingAPI.Routers.Main extends Backbone.Router

  initialize: (options) ->
    @options = options

  routes:
    ''            : 'index'
    ':id'         : 'show'

  index: ->
    @gamesCollection = new GamingAPI.Collections.Games()
    @gamesCollection.fetch({reset: true}).done (response) =>
      @gamesCollection = new GamingAPI.Collections.Games(response.results)
      @gamesView = new GamingAPI.Views.Games(collection: @gamesCollection)
      $(".games").html @gamesView.render().el

  show: (id) ->
    @game = new GamingAPI.Models.Game(id: id)
    @game.fetch().done (response) =>
      @game = new GamingAPI.Models.Game(response.results)
      @detailedGameView = new GamingAPI.Views.DetailedGameView(game: @game)
      $(".games").html @detailedGameView.render().el
