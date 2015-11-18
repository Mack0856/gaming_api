describe "GamingAPI.Models.Game", ->
  beforeEach ->
    @platforms = new GamingAPI.Collections.Platforms([{abbreviation: "XB1"}, {abbreviation: "PS4"}, {abbreviation: "PC"}])
    @game = new GamingAPI.Models.Game
      name: "test"
      deck: "My test description"
      original_release_date: "2015-01-01"
      id: 1
      platforms: @platforms
      image:
        medium_url: "my fake url"

  describe "#getName", ->
    it "returns the game name", ->
      expect(@game.getName()).toEqual "test"

  describe "#getReleaseDate", ->
    it "returns the release date", ->
      expect(@game.getReleaseDate()).toEqual new Date("2015-01-01")

  describe "#getId", ->
    it "returns the id", ->
      expect(@game.getId()).toEqual 1

  describe "#getDescription", ->
    it "returns the description", ->
      expect(@game.getDescription()).toEqual "My test description"

  describe "#getPlatforms", ->
    it "returns a platforms collection", ->
      expect(this.game.getPlatforms().models[0].attributes.models[0].attributes.abbreviation).toEqual "XB1"

  describe "#getImageUrl", ->
    it "returns the image url", ->
      expect(@game.getImageUrl()).toEqual "my fake url"
