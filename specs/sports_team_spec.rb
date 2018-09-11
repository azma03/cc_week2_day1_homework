require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < Minitest::Test

  def setup
    @sports_team = SportsTeam.new("Gladiators", ["David", "Scott", "Sarah"], "Chris")
  end

  def test_get_team_name
    # result = @sports_team.get_team_name()
    result = @sports_team.team_name
    assert_equal("Gladiators", result)
  end

  def test_get_players
    expected = ["David", "Scott", "Sarah"]
    # result = @sports_team.get_players()
    result = @sports_team.players
    assert_equal(expected, result)
  end

  def test_get_coach_name
    # result = @sports_team.get_coach_name()
    result = @sports_team.coach()
    assert_equal("Chris", result)
  end

  def test_set_coach_name
    # @sports_team.set_coach_name("Asma")
    # assert_equal("Asma", @sports_team.get_coach_name())
    @sports_team.coach = "Asma"
    assert_equal("Asma", @sports_team.coach)
  end

  def test_add_new_player
    @sports_team.add_new_player("William")
    assert_equal(4, @sports_team.players.length())
  end

  def test_find_player__found
    result = @sports_team.find_player("Scott")
    assert_equal(true, result)
  end

  def test_find_player__not_found
    result = @sports_team.find_player("Barry")
    assert_equal(false, result)
  end

  def test_update_points__won
    @sports_team.update_points("won")
    assert_equal(1, @sports_team.points)
  end

  def test_update_points__lost
    @sports_team.update_points("lost")
    assert_equal(0, @sports_team.points)
  end

end
