class GamesController < ApplicationController
  def index
    render json: giant_bomb_interaction.get_games, status: :ok
  end

  def show
    if params[:id].present?
      render json: giant_bomb_interaction.get_game(params[:id]), status: :ok
    else
      render json: "Please provide an id", status: 422
    end
  end

  private
  def giant_bomb_interaction
    @giant_bomb_interaction ||= GiantBombApiInteraction.new
  end
end
