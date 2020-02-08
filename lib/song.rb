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
    unique_genres = []
    
    @@genres.each do |a_genre|
      if !unique_genres.include?(a_genre)
        unique_genres << a_genre
      end
    end
    
    return unique_genres
  end
  
  def self.genre_count
    genre_totals = {}
    
    @@genres.reduce(Hash.new) do |the_hash, a_genre|
      if the_hash.has_key?(a_genre)
        the_hash[a_genre] += 1
      else
        the_hash[a_genre] = 1
      end
    end
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