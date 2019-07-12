require 'pry'

class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
<<<<<<< HEAD
    #song.artist = self
    @songs << song
    @@all << self
    song
=======
    song.artist = self
    @songs << song
>>>>>>> ec2d6913f2bd74a1b5c51326b4d0f6cf69a38e56
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
<<<<<<< HEAD
    self.all.detect { |artist| artist.name == name } || self.new(name)
  end
  
  def print_songs
    self.songs.each { |song| puts song.name }
=======
    unless @@all.detect { |artist| artist.name == name } 
      self.new(name)
    end
  end
  
  def print_songs
    self.songs.each { |song| puts song.title }
>>>>>>> ec2d6913f2bd74a1b5c51326b4d0f6cf69a38e56
  end
  
end