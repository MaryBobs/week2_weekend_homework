require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")

class TestRoom < MiniTest::Test

def setup
  @song1 = Song.new("I Want to Break Free","Queen")
  @song2 = Song.new("Sweet Child O' Mine", "Guns N'Roses")
  @song3 = Song.new("Eye Of The Tiger", "Survivor")
  @song4 = Song.new("Smells Like Teen Spirit", "Nirvana")
  @song5 = Song.new("I'm Gonna Be 500 Miles", "The Proclaimers")

  @songs = [@song1, @song2, @songs3]

  @room1 = Room.new("Twist & Shout", 20, @songs)
  @room2 = Room.new("Rock Star", 25, @songs)
  @room3 = Room.new("Glam-O-Rama", 30, @songs)

  @guest1 = Guest.new("Bill", 50, "Eye of the Tiger")
  @guest2 = Guest.new("Ellie", 25, "Born to Run")
end

def test_room_has_name
  assert_equal("Rock Star", @room2.name)
end

def test_room_is_empty
  assert_equal(0, @room3.guests.count)
end

def test_room_has_price
  assert_equal(20, @room1.price)
end

def test_room_has_playlist
  assert_equal(3, @room1.playlist.count)
end

def test_capacity_starts_at_zero
  assert_equal(0, @room2.capacity)
end

end
