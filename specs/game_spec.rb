require('minitest/autorun')
require_relative('../models/game.rb')

class TestGame < Minitest::Test

  def setup
    @game = Game.new("scissors", "paper")
    @game1 = Game.new("paper", "scissors")
    @game2 = Game.new("rock", "paper")
    @game3 = Game.new("paper", "rock")
    @game4 = Game.new("scissors", "rock")
    @game5 = Game.new("rock", "scissors")
    @game6 = Game.new("rock", "rock")
  end

  def test_scissors_beats_paper
    assert_equal("scissors wins!", @game.result())
    assert_equal("scissors wins!", @game1.result())
  end


  def test_paper_beats_rock
    assert_equal("paper wins!", @game2.result())
    assert_equal("paper wins!", @game3.result())
  end

  def test_rock_beats_scissors
    assert_equal("rock wins!", @game4.result())
    assert_equal("rock wins!", @game5.result())
  end

  def test_no_winner
    assert_equal("No winner", @game6.result())
  end


end
