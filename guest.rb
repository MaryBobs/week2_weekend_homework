class Guest

attr_reader :name, :wallet, :fav_song
attr_writer :wallet

def initialize(name,wallet, favourite_song)
  @name = name
  @wallet = wallet
  @fav_song = favourite_song
end








end
