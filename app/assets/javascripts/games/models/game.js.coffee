class GamingAPI.Models.Game extends Backbone.Model
  urlRoot: '/games'

  getName: ->
    @get('name')

  getReleaseDate: ->
    new Date(@get('original_release_date'))

  getId: ->
    @get("id")

  getDescription: ->
    @get("deck")

  getPlatforms: ->
    new GamingAPI.Collections.Platforms(@get('platforms'))

  getImageUrl: ->
    @get('image')?.medium_url
