class KaraokeBar

attr_reader :name, :rooms

def initialize(name, rooms)
  @name = name
  @rooms = rooms
end

def room_name(room)
  for x in @rooms
    if x == room
  return room.name
end
end
end

def check_in_guest(customer,room)
  if room.capacity >= 5
    return "Sorry, this room is full"
  end
  room.guests.push(customer)
  room.capacity += 1
  customer.pay_for_room(customer, room)
  # charge_room_fee(customer, room)
end

def check_out_guest(customer, room)
  room.guests.delete(customer)
  room.capacity -= 1
end

def add_song(song, room)
  return room.playlist.push(song)
end

def charge_room_fee(customer, room)
  customer.wallet -= room.price
end

end
