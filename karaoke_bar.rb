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
  return room.guests.push(customer)
end

def check_out_guest(customer, room)
  return room.guests.delete(customer)
end

def add_song(song, room)
  return room.playlist.push(song)
end

end
