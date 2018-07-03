require_relative 'fish'
require_relative 'river'

class Bear
  def initialize(arg1, arg2)
    @name = arg1
    @type = arg2
    @stomach = []
  end

  def food_count
    return @stomach.count
  end

  def roar
    return "Rawr"
  end

  def eat_fish(river)
    @stomach.push(river.feed_fish)
  end


end
