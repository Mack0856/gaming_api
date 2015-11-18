class GamingAPI.Views.DetailedGameView extends Backbone.View
  template: JST['templates/detailed_game_view']

  initialize: (options) ->
    @options = options
    @game = options.game

  render: ->
    @$el.html @template()
    @fillInAttributes()
    this

  fillInAttributes: ->
    @$(".js-game-image").attr("src", @game.getImageUrl())
    @$(".js-game-name").text "Name: " + @game.getName()
    @$(".js-game-description").text "Description: " + @game.getDescription()
    @$(".js-game-platforms").text "Platforms: " + @game.getPlatforms().getPlatformNames()
