#Song class
  #needs to keep track of number of songs that it creates
  #artists of existing songs
  #genres of existing songs
  #track the number of songs each genre it creates
  #track the number of songs each artist is responsible for
#produce individual songs
  #each song
    #name
    #artist
    #genre

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.tally
  end

  def self.artist_count
    @@artists.tally
  end
end
