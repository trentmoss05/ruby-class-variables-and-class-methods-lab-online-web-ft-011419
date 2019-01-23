class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

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
    @@genres.inject(Hash.new(0)) do |hash, e|
      hash[e] += 1
      hash
    end
  end

  def self.artist_count
    #@@artists.inject(Hash.new(0)) do |hash, e|
    #  hash[e] += 1
    #  hash
    #end

    hash = Hash.new(0)
    plain_hash = {}
    @@artists.each do |artist|
      if hash[artist]
        hash[artist] += 1
      else
        hash[artist] = 1
      end
    end
    hash
  end


end
