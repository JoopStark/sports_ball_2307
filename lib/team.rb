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
end
