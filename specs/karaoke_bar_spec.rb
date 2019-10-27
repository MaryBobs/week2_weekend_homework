require("minitest/autorun")
require("minitest/rg")
require_relative("../karaoke_bar.rb")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")
require('pry-byebug')


class TestKaraokeBar < MiniTest::Test

def setup
  @song1 = Song.new("I Want to Break Free","Queen")
  @song2 = Song.new("Sweet Child O' Mine", "Guns N'Roses")
  @song3 = Song.new("Eye Of The Tiger", "Survivor")
  @song4 = Song.new("Smells Like Teen Spirit", "Nirvana")
  @song5 = Song.new("I'm Gonna Be 500 Miles", "The Proclaimers")

  @songs = [@song1, @song2, @song3]

  @room1 = Room.new("Twist & Shout", 20, @songs)
  @room2 = Room.new("Disco Inferno", 25, @songs)
  @room3 = Room.new("Glam-O-Rama", 30, @songs)

  @rooms = [@room1, @room2, @room3]

  @bar1 = KaraokeBar.new("Rock Stars", @rooms)

  @guest1 = Guest.new("Bill", 50, "Eye Of The Tiger")
  @guest2 = Guest.new("Ellie", 25, "Born to Run")
  @guest3 = Guest.new("Fred", 30, "I Want to Break Free")

end

def test_bar_has_name
  assert_equal("Rock Stars", @bar1.name)
end

 def test_bar_has_karaoke_rooms
   assert_equal(3, @bar1.rooms.count)
 end

def test_bar_has_karaoke_rooms_by_name
  @bar1.room_name(@room1)
  assert_equal("Twist & Shout", @room1.name)
end

def test_add_guest_to_room
  @bar1.check_in_guest(@guest1, @room1)
  assert_equal(1, @room1.guests.count)
  assert_equal(1, @room1.capacity)
  assert_equal(30, @guest1.wallet)
end

def test_guest_leaves_room
  @bar1.check_in_guest(@guest1, @room1)
  @bar1.check_in_guest(@guest2, @room1)
  @bar1.check_out_guest(@guest1, @room1)
  assert_equal(1, @room1.guests.count)
  assert_equal(1, @room1.capacity)
end

def test_room_full_no_check_in_possible
  @room1.capacity = 5
  assert_equal("Sorry, this room is full", @bar1.check_in_guest(@guest1, @room1))
end

def test_room_has_space_allow_check_in
  @room1.capacity = 4
  @bar1.check_in_guest(@guest1, @room1)
  assert_equal(5, @room1.capacity)
end

def test_add_song_to_room
  @bar1.add_song(@song5, @room2)
  assert_equal(4, @room2.playlist.count)
end

def test_guest_fav_song__in_room
  assert_equal("Whoo!", @bar1.guest_song_available(@guest1, @room1))
end

def test_guest_fav_song__not_in_room
  assert_equal("Maybe next time", @bar1.guest_song_available(@guest2, @room1))
end

end
