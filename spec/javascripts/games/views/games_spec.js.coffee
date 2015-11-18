describe "GamingApi.Views.Games", ->
  beforeEach ->
    @game1 = new GamingAPI.Models.Game(name: "test1")
    @game2 = new GamingAPI.Models.Game(name: "test2")
    @game3 = new GamingAPI.Models.Game(name: "test3")
    @games = new GamingAPI.Collections.Games [@game1, @game2, @game3]
    @view = new GamingAPI.Views.Games(collection: @games)
    @view.render()

  describe "#render", ->
    it "renders the view with all games", ->
      expect(@view.$(".games-container").children().length).toEqual 3
      expect($(@view.$(".games-container").children()[0]).find("a").text()).toEqual "test1"
      expect($(@view.$(".games-container").children()[1]).find("a").text()).toEqual "test2"
      expect($(@view.$(".games-container").children()[2]).find("a").text()).toEqual "test3"
