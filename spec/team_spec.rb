require './lib/player'
require './lib/team'

describe Team do

let (:team) {team = Team.new("Dodgers", "Los Angeles")}

  describe "start-up" do
    it "exists" do 
      expect(team).to be_a(Team)
    end

    it "has an empty roster" do
      expect(team.roster).to eq([])
    end
    
    it "can count players" do
      expect(team.player_count).to eq(0)
    end
  end

  describe "with players" do
    let (:player_1) {player_1 = Player.new("Michael Palledorous" , 1000000, 36)}
    let (:player_2) {player_1 = Player.new("Kenny DeNunez", 500000, 24)}
    
    it "players exist" do
      expect(player_1).to be_a(Player)
    end

    it "can roster players" do 
      team.add_player(player_1)
      team.add_player(player_2)

      expect(team.roster).not_to eq([])
    end

    it "can count rostered players" do
      team.add_player(player_1)
      team.add_player(player_2)

      expect(team.player_count).to eq(2)
    end
  end

  describe "player contract types and team finance" do
    let (:player_1) {player_1 = Player.new("Michael Palledorous" , 1000000, 36)}
    let (:player_2) {player_1 = Player.new("Kenny DeNunez", 500000, 24)}
    let (:player_3) {player_1 = Player.new("Alan McClennan", 750000, 48)}
    let (:player_4) {player_1 = Player.new("Hamilton Porter", 100000, 12)}

    it "can tell who is longer term" do
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.long_term_players.count).to eq(2)
    end

    it "can tell who is short term" do
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.short_term_players.count).to eq(2)
    end

    it "tell the team's total value" do
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.total_value).to eq(85200000)
    end

    it "can give the teams total value and player count at once #details" do
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.details).to eq({"total_value" => 85200000, "player_count" => 4})
 
    end
  end
end

