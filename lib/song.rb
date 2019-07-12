<<<<<<< HEAD
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
=======
class Song 
  
  attr_accessor :title, :artist
  
  def initialize(title, artist = nil)
    @title = title
    @artist = artist
>>>>>>> ec2d6913f2bd74a1b5c51326b4d0f6cf69a38e56
  end
  
end