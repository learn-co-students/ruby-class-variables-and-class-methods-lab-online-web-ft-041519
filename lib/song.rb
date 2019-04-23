class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @artist = artist
      if @@artists.include?(artist)
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    @@artists << artist
    @genre = genre
      if @@genres.include?(genre)
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end
      @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    artists_arr = []
    @@artists.each do |artist|
      if !(artists_arr.include?(artist))
        artists_arr << artist
      end
    end
    artists_arr
  end

  def self.genres
    genres_arr = []
    @@genres.each do |genre|
      if !(genres_arr.include?(genre))
        genres_arr << genre
      end
    end
    genres_arr
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end
