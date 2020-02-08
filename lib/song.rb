class Song
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_reader(:count, :artists, :genres, :name, :artist, :genre)
  
  
  
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
    
    @@genres.each do |a_genre|
      if genre_totals.has_key?(a_genre)
        genre_totals[a_genre] += 1
      else
        genre_totals[a_genre] = 1
      end
    end
    
    return genre_totals
  end
  
  
  
  def self.artist_count
    artist_totals = {}
    
    @@artists.each do |an_artist|
      if artist_totals.has_key?(an_artist)
        artist_totals[an_artist] += 1
      else
        artist_totals[an_artist] = 1
      end
    end
    
    return artist_totals
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