class Bear
#attr_accessor's are the "getters" and "setters"
  attr_accessor :name, :type, :tummy

  def initialize(name, type)
#within class @ is available everywhere.
    @name = name
    @type = type
    @tummy = []
  end

  def roar()
    return "Rawr!"
  end

def take_fish_from_river( river )
  if river.fish_count > 0
    @tummy.push(river.fishes.pop)
  end
  else
    return 0
  end

end

class Fish

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

class River

  attr_accessor :fishes

  def initialize( fishes )
    @fishes = fishes
  end

  def fish_count(  )
    return @fishes.count
  end

end
