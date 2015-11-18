class GamingAPI.Collections.Platforms extends Backbone.Collection
  model: GamingAPI.Models.Platform

  getPlatformNames: ->
    names = ""
    _.each @models, (model) ->
      names += " | " + model.getPlatformName()
    if names == ""
      names = "TBA"
    names
