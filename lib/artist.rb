require 'pry'

class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    #song.artist = self
    @songs << song
    @@all << self
    song
  end
  
  def songs
    @songs
  end
  
  def save
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.find_or_create_by_name(name)
    self.all.detect { |artist| artist.name == name } || self.new(name)
  end
  
  def print_songs
    self.songs.each { |song| puts song.name }
  end
  
end