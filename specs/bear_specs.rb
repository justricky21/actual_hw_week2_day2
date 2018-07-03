require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bear'

class TestBear < MiniTest::Test

  def setup
    @bear_1 = Bear.new("Baloo", "sloth")
    @bear_2 = Bear.new("Yogi", "brown")
    @bear_3 = Bear.new("Smokey", "grizly")
    @river_1 = River.new("Amazon")
    @river_2 = River.new("Nile")
    @river_3 = River.new("Rio Bravo")
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Dory")
    @fish_3 = Fish.new("Marlin")
  end

  # def test_count_fish
  #   assert_equal(0,@bear_1.count_fish)
  # end
  #
  # def test_roar
  #   assert_equal("Rawr",@bear_1.roar())
  # end

  def test_eat_fish
    @river_1.multiply(@fish_1)
    @river_1.multiply(@fish_2)
    assert_equal(2,@river_1.count_fish)
    @bear_1.eat_fish(@river_1)
    assert_equal(1,@bear_1.food_count)
    assert_equal(1,@river_1.count_fish)
  end

end
