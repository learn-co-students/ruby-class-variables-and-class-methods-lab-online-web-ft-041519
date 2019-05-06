class Song 
  attr_accessor :name, :artist, :genre
 
  @@count = 0
  @@genres = []   #STORES GENRE
  @@artists = []  #STORES ARTISTS
#  @@artist_count = {}
#  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @name = name          # NAMES OF SONGS
    @artist = artist      # ALL OF THE ARTISTS 
    @genre = genre        # ALL OF THE GENRES
   
    @@count += 1 
   
    @@artists << artist #SHOVELS when new artist is added to @@artists array upon initialization
    @@genres << genre   #SHOVELS when new genre gets added to @@genre array upon initialization
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
  
  def genre_count 
    @@genre_count = {}
  end

  def self.artist_count
    artist_count = Hash.new(0)          
    
    #sets artist_count = to a new 0 hash
    
    @@artists.each {|artist| artist_count[artist] += 1}     
    
    #iterates over the artists, counts the artists in the array and adds 1 each time
    
    artist_count        
    
    #returns hash of artist count
  end
  
  # returns a hash of artists and the number of songs that have those artists
  # why doesnt this work without {} ??

def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each {|genre| genre_count[genre] += 1}
    genre_count
  end

# returns a hash in which the keys are the names of each genre. 
# each genre name key should point to a value that is the number of songs that have that genre.
# iterate over the @@genres array and populate a hash with the key/value pairs. 
# You will need to check to see if the hash already contains a key of a particular genre. If so, increment the value of that key by one, otherwise, create a new key/value pair.

end