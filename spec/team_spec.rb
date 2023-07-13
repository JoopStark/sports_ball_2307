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




  
end
