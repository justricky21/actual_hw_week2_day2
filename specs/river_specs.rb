require 'minitest/autorun'
require 'minitest/rg'
require_relative '../river'

class TestRiver < MiniTest::Test
  def setup
    @river_1 = River.new("Amazon")
    @river_2 = River.new("Nile")
    @river_3 = River.new("Rio Bravo")
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Dory")
    @fish_3 = Fish.new("Marlin")
  end

  def test_count_fish
    assert_equal(0,@river_1.count_fish)
  end

  def test_multiply
    @river_1.multiply(@fish_1)
    assert_equal(1,@river_1.count_fish)
  end

  def test_feed_fish
    @river_1.multiply(@fish_1)
    @river_1.feed_fish
    assert_equal(0,@river_1.count_fish)
  end
end
