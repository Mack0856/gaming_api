class GiantBombApiInteraction
  def initialize
  end

  def get_games
    response = connection.get { |req| req.url "http://www.giantbomb.com/api/games/?api_key=#{Rails.application.secrets[:giant_bomb_api_key]}&format=json&sort=original_release_date:desc&field_list=id,name,original_release_date&limit=50" }
    JSON.parse(response.body)
  end

  def get_game(id)
    response = connection.get { |req| req.url "http://www.giantbomb.com/api/game/#{id}/?api_key=#{Rails.application.secrets[:giant_bomb_api_key]}&format=json" }
    JSON.parse(response.body)
  end

  private
  def connection
    @connection ||= Faraday.new
  end
end
