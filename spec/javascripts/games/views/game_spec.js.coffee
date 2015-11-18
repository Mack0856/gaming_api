describe "GamingAPI.Views.Game", ->
  beforeEach ->
    @game = new GamingAPI.Models.Game(name: "test1")
    @view = new GamingAPI.Views.Game(game: @game)
    @view.render()

  describe "#render", ->
    it "renders the specific game", ->
      expect(@view.$("a").text()).toEqual "test1"
