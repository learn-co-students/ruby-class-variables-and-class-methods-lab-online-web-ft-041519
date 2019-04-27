class Song 
  attr_accessor :count :artists :genres 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  def initialize name, artist, genre
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

def self.artists
  @@artists.list 
end 

def self.genres 
  @@genres.list 
end 

def self.genre_count
  num_of_genres = {} 
  @@genres.each do |each_genre|
    if num_of_genres [each_genre]
      num_of_genres[each_genre] += 1 
    else 
      num_of_genres [each_genre]=1 
    end 
    num_of_genres
end 

def self.artist_count
  num_of_artists 
end 
