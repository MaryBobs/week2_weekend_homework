class Room

attr_reader :name, :price, :playlist, :guests

def initialize(name, price, playlist)
  @name = name
  @price = price
  @playlist = playlist
  @guests = []
end

def check_in_guest(guest)
  @guests.push(guest)
end

def check_out_guest(guest)
  @guests.delete(guest)
end







end
