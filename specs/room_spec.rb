require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test

def setup
  @song1 = Song.new("I Want to Break Free","Queen")
  @song2 = Song.new("Sweet Child O' Mine", "Guns N'Roses")
  @song3 = Song.new("Eye Of The Tiger", "Survivor")
  @song4 = Song.new("Smells Like Teen Spirit", "Nirvana")
  @song5 = Song.new("I'm Gonna Be 500 Miles", "The Proclaimers")

  @songs = [@song1, @song2, @songs3]

  @room1 = Room.new("Twist & Shout", 5, 20, @songs)
  @room2 = Room.new("Rock Star", 8, 25, @songs)
  @room3 = Room.new("Glam-O-Rama", 10, 30, @songs)
end

def test_room_has_name
  assert_equal("Rock Star", @room2.name)
end

def test_room_has_capacity
  assert_equal(10, @room3.capacity)
end

def test_room_has_price
  assert_equal(20, @room1.price)
end

def test_room_has_playlist
  assert_equal(3, @room1.playlist.count)
end

end
