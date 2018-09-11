class SportsTeam

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  #getters and setters

  # def get_team_name()
  #   return @team_name
  # end
  #
  # def get_players()
  #   return @players
  # end
  #
  # def get_coach_name()
  #   return @coach
  # end
  #
  # def set_coach_name(coach)
  #   @coach = coach
  # end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def find_player(player_to_find)
    player_found = false
    for player in @players
      if player == player_to_find
          player_found = true
      end
    end
    return player_found
  end

  def update_points(result)
    if result == "won"
      @points += 1
    end
  end

end
