class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres= []
    def initialize(name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end
    def self.count
        @@count
    end
    def self.artists #unique array in test
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.artist_count #or can do genre_count method
        @@artists.tally
    end
    def self.genre_count #or can do tally method see artist_count
        genre_count={}
        @@genres.each do |genre|
            if genre_count[genre] 
                genre_count[genre] +=1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end
end