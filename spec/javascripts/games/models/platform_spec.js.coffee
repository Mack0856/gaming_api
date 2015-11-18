describe "GamingAPI.Models.Platform", ->
  describe "#getPlatformName", ->
    it "returns the abbreviation of the platform", ->
      @platform = new GamingAPI.Models.Platform(abbreviation: "XB1")
      expect(@platform.getPlatformName()).toEqual "XB1"
