require 'spec_helper'
describe GamesController, type: :controller do
  describe "#index" do
    subject { get :index }
    it "returns a json response with all records" do
      interaction = double
      results = { results: [{name: "test1", id: 1}, {name: "test2", id: 2}] }
      allow(controller).to receive(:giant_bomb_interaction).and_return(interaction)
      allow(interaction).to receive(:get_games).and_return(results)
      subject
      expect(JSON.parse(response.body)["results"].count).to eq 2
      expect(JSON.parse(response.body)["results"][0]["name"]).to eq "test1"
      expect(JSON.parse(response.body)["results"][1]["name"]).to eq "test2"
    end
  end

  describe "#show" do
    context "with an id parameter present" do
      subject { get :show, id: 1 }
      it "returns a json response for a specific record" do
        interaction = double
        results = { results: [{name: "test1", id: 1}] }
        allow(controller).to receive(:giant_bomb_interaction).and_return(interaction)
        allow(interaction).to receive(:get_game).with("1").and_return(results)
        subject
        expect(JSON.parse(response.body)["results"].count).to eq 1
        expect(JSON.parse(response.body)["results"][0]["name"]).to eq "test1"
      end
    end

    context "with no id parameter present" do
      subject { get :show, id: "" }
      it "returns 422 if no id is present" do
        subject
        expect(response.status).to eq 422
      end
    end
  end
end
