describe "GamingAPI.Collections.Platforms", ->
  describe "#getPlatformNames", ->
    it "returns all platform names", ->
      game = new GamingAPI.Models.Game(name: "Test", platforms: [{abbreviation: "XB1"}, {abbreviation: "PS4"}, {abbreviation: "PC"}])
      collection = new GamingAPI.Collections.Platforms(game.get('platforms'))
      expect(collection.getPlatformNames()).toEqual " | XB1 | PS4 | PC"
