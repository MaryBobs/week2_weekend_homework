require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

def setup
  @guest1 = Guest.new("Bill", 50, "Eye of the Tiger")
  @guest2 = Guest.new("Ellie", 25, "Born to Run")
end

def test_guest_has_name
  assert_equal("Bill", @guest1.name)
end

def test_guest_has_cash
  assert_equal(25, @guest2.wallet)
end

def test_guest_has_favourite_song
  assert_equal("Born to Run", @guest2.fav_song)
end


end
