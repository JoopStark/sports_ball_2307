class Team 
  attr_reader :roster
  def initialize(team_name, location)
    @team_name = team_name
    @location = location
    @roster = []
  end

  def player_count
    @roster.count
  end

  def add_player(player_object)
    @roster << player_object
  end

  def long_term_players
    @roster.select{ |player| player.contract_length > 24}
  end
  
  def short_term_players
    @roster.select{ |player| player.contract_length <= 24}
  end

  def total_value
    @roster.inject(0) { |sum, player| sum + player.total_cost}
  end

  def details
    {"total_value" => total_value, "player_count" => player_count}
  end
end
