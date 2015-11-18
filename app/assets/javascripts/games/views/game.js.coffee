class GamingAPI.Views.Game extends Backbone.View
  template: JST['templates/game']

  initialize: (options) ->
    @options = options
    @game = options.game

  render: ->
    @$el.html @template()
    @fillInAttributes()
    this

  fillInAttributes: ->
    @$(".js-view-game").attr("href", "##{@game.getId()}")
    @$(".js-view-game").text @game.getName()
