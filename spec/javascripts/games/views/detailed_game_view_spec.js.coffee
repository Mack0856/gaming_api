describe "GamingAPI.Views.DetailedGameView", ->
  beforeEach ->
    @platform1 = new GamingAPI.Models.Platform({abbreviation: "XB1"})
    @platform2 = new GamingAPI.Models.Platform({abbreviation: "PS4"})
    @platform3 = new GamingAPI.Models.Platform({abbreviation: "PC"})

    @game = new GamingAPI.Models.Game
      name: "test1"
      deck: "My test description"
      image: { medium_url: "test url"}
      platforms: new GamingAPI.Collections.Platforms([@platform1, @platform2, @platform3])

    @view = new GamingAPI.Views.DetailedGameView(game: @game)
    @view.render()

  describe "render", ->
    it "renders more information about a game", ->
      expect(@view.$(".js-game-image").attr("src")).toEqual "test url"
      expect(@view.$(".js-game-name").text()).toEqual "Name: test1"
      expect(@view.$(".js-game-description").text()).toEqual "Description: My test description"
