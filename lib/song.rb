require 'pry'

class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(full_string)
    split_string = full_string.chomp(".mp3").split(" - ")
    new_song = self.new(split_string[1])
    artist = Artist.find_or_create_by_name(split_string[0])
    artist.add_song(new_song)
    new_song.artist = artist
    new_song
    #binding.pry
  end
  
end