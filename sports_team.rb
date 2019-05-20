class SportsTeam

  attr_reader(:name, :players)
  attr_accessor(:coach)

  def initialize(team_name, team_players, team_coach, team_points)
    @name = team_name
    @players = team_players
    @coach = team_coach
    @points = team_points
  end

  def add_player(new_player)
    @players << new_player
  end

  def find_player(name)
    for player in @players
      if name == player
        return true
      end
    end
    return false
  end

  def points_update(win_or_lose)
    if win_or_lose == "win"
      @points += 1
    elsif win_or_lose == "lose"
      @points += 0
    end
  end

end
