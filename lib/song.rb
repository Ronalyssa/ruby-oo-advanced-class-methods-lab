require "pry"

class Song
  attr_accessor :name, :artist_name 
  attr_reader :save
  @@all = []

  def initialize()
    @name = name
    @artist_name = artist_name
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
 
  def self.create
   song = Song.new
   song.save
   song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = create
    song.name = name
    song
  end
  
  def self.find_by_name(name)
   @@all.each do |found_song| 
    #binding.pry
    if found_song.name == name
      return found_song
      end
    end
    false
  end

  def self.find_or_create_by_name(name)
    find_by_name(name)
    create_by_name(name)
    if find_by_name(name)
      return name
    elsif
      create_by_name(name)
      song.name
    end
  end

  def self.alphabetical
   sorted_song = @@all
   sorted_song.sort
  end

  def self.destroy_all
    Song.all.clear
  end

end
