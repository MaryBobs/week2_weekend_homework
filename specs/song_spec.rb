require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test

def setup
  @song1 = Song.new("I Want to Break Free","Queen")
  @song2 = Song.new("Sweet Child O' mine", "Guns N'Roses")
  @song3 = Song.new("Eye Of The Tiger", "Survivor")
  @song4 = Song.new("Smells Like Teen Spirit", "Nirvana")
  @song5 = Song.new("I'm Gonna Be 500 Miles", "The Proclaimers")
end

def test_song_has_title()
  assert_equal("Eye Of The Tiger", @song3.title)
end

def test_song_has_artist
  assert_equal("The Proclaimers", @song5.artist)
end





end
