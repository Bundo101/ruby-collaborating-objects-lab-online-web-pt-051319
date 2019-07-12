require 'pry'

class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
<<<<<<< HEAD
    Dir.entries(@path).select { |file| file.end_with?(".mp3") }
  end
  
  def import
    self.files.each do |file|
    Song.new_by_filename(file)
    end
=======
    files = Dir.entries(@path).map { |file| file.chomp(".mp3").split(" - ") }
    files.delete_if { |file| file.include?(".") || file.include?("..") }
    binding.pry
  end
  
  def import
    
>>>>>>> ec2d6913f2bd74a1b5c51326b4d0f6cf69a38e56
  end
  
  
end