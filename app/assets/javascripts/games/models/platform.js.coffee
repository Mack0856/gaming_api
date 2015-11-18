class GamingAPI.Models.Platform extends Backbone.Model

  getPlatformName: ->
    @get("abbreviation")
