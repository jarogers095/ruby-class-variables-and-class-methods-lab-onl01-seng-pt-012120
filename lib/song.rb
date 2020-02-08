class Song
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_reader(:count, :artists, :genres)
  attr_accessor(:name, :artist, :genre)
  
  def self.count
    return @@count
  end
  
  def self.artists
    return @@artists
  end
  
  def self.genres
    return @@genres
  end
  
  def self.genre_count
    return @@genres.size
  end
  
  def self.artist_count
    return @@artists.size
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    if !@@artists.include?(artist)
      @@artists << artist
    end
    if !@@genres.include?(genre)
      @@genres << genre
    end
  end
end