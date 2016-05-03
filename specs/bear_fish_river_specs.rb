require( "minitest/autorun" )
require_relative( "../bear_fish_river.rb" )
require( "pry-byebug" )
require( "minitest/rg" )

class TestBearFishRiver < MiniTest::Test

  def setup
    fish1 = Fish.new("Nemo")
    fish2 = Fish.new("Sebastian")
    fish3 = Fish.new("Flipper")

    fishes = [ fish1, fish2, fish3 ]

    @river = River.new( fishes )
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_bear_name
   assert_equal("Yogi", @bear.name)
  end

  def test_bear_type
   assert_equal("Grizzly", @bear.type)
  end

  def test_bear_tummy
   assert_equal([], @bear.tummy)
  end

  def test_bear_roar
    assert_equal("Rawr!", @bear.roar())
  end

  def test_fish_name
    fish = Fish.new("Nemo")
    assert_equal("Nemo", fish.name)
  end

  def test_fish_count
    assert_equal(3, @river.fish_count)
  end

  def test_take_fish_from_river
    @bear.take_fish_from_river( @river )
    assert_equal(2, @river.fish_count)
    assert_equal(1, @bear.tummy.count)
  end

#write a test for no fish in the river.
  def test_take_fish_from_river_no_fish
    @bear.take_fish_from_river( @river = River.new( no_fish = [] ))
    assert_equal(0, @river.fish_count)
    assert_equal(0, @bear.tummy.count)
  end


end
