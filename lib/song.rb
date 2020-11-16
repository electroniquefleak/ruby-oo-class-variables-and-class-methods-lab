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

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

    def self.genre_count
        counts = Hash.new(0)
        @@genres.each {|genre| counts [genre] = @@genres.count(genre)}
        counts
    end
  
    def self.artist_count
        counts = Hash.new(0)
        @@artists.each {|artist| counts [artist] = @@artists.count(artist)}
        counts
    end
end