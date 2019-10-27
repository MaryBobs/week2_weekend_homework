class Guest

attr_reader :name, :wallet, :fav_song
attr_writer :wallet

def initialize(name,wallet, favourite_song)
  @name = name
  @wallet = wallet
  @fav_song = favourite_song
end

def pay_for_room(customer, room)
  customer.wallet -= room.price
end

end
