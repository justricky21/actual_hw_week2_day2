require 'minitest/autorun'
require 'minitest/rg'
require_relative '../fish'

class TestFish < MiniTest::Test

  def setup
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Dory")
    @fish_3 = Fish.new("Marlin")
  end

end
