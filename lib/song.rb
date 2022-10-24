class Song 
    attr_accessor :name, :genre, :artist

@@count = 0
@@genres = []
@@artists = []


    def initialize name,artist,genre
    @genre = genre
    @name = name
    @artist = artist
    @@count += 1
    @@genres << @genre
    @@artists << @artist
    end

    def self.count
    @@count
    end
    def self.artists
        @@artists.uniq()
    end 
    def self.genres
        @@genres.uniq()
    end 

    def self.genre_count
genres_hash = Hash.new(0)

@@genres.each do |v|
    genres_hash[v] += 1
end

genres_hash.each do |k, v|
  {:k=>v}
end
    end
    def self.artist_count
        artists_hash = Hash.new(0)
        @@artists.each do |v|
            artists_hash[v] += 1
        end
        artists_hash.each do |k, v|
            {:k=>v}
        end
    end
end 