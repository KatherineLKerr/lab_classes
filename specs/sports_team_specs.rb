require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def test_name
    team = SportsTeam.new("teamname", ["Katherine", "Megan", "Alex"], "Coach Somebody", 0)
    assert_equal("teamname", team.name)
  end

  def test_players
    team = SportsTeam.new("teamname", ["Katherine", "Megan", "Alex"], "Coach Somebody", 0)
    assert_equal(["Katherine", "Megan", "Alex"], team.players)
  end

  def test_coach
    team = SportsTeam.new("teamname", ["Katherine", "Megan", "Alex"], "Coach Somebody", 0)
    assert_equal("Coach Somebody", team.coach)
  end

  def test_new_coach
    team = SportsTeam.new("teamname", ["Katherine", "Megan", "Alex"], "Coach Somebody", 0)
    team.coach=("Coach Nobody")
    assert_equal("Coach Nobody", team.coach)
  end

  def test_add_player
    team = SportsTeam.new("teamname", ["Katherine", "Megan", "Alex"], "Coach Somebody", 0)
    team.add_player("newplayer")
    assert_equal(["Katherine", "Megan", "Alex", "newplayer"], team.players)
  end

  def test_find_player
    team = SportsTeam.new("teamname", ["Katherine", "Megan", "Alex"], "Coach Somebody", 0)
    assert_equal(true, team.find_player("Alex"))
  end

  def test_points_update
    team = SportsTeam.new("teamname", ["Katherine", "Megan", "Alex"], "Coach Somebody", 0)
    assert_equal(1, team.points_update("win"))
  end
end
