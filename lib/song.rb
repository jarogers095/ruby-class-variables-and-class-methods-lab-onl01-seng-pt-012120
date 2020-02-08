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
    unique_artists = []
    @@artists.each do |an_artist|
      if !unique_artists.include?(an_artist)
        unique_artists << an_artist
      end
    end
    
    return unique_artists
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
    @@artists << artist
    @@genres << genre
  end
end