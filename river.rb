require_relative('fish.rb')

class River
  def initialize(arg1)
    @name = arg1
    @fauna = []
  end

  def multiply(fishie)
    @fauna.push(fishie)
  end

  def count_fish
    return @fauna.length
  end

  def feed_fish
    return @fauna.pop
  end

end
