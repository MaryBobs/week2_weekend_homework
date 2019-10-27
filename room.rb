class Room

attr_reader :name, :price, :playlist, :guests, :capacity
attr_writer :capacity

def initialize(name, price, playlist)
  @name = name
  @price = price
  @playlist = playlist
  @guests = []
  @capacity = 0
end







end
