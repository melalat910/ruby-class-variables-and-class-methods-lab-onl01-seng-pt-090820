class Song
  attr_accessor  :name, :artist, :genre

  @@count = 0;  #total songs created
    @@genres = []; #array of genres
    @@artists = []; #array of unique artists
    @@genre_count = {}; #hash of genre and number of songs in genre created
    @@artist_count = {}; #hash of artists and number of songs created

    def initialize(name, artist, genre)
        #Setup Class variables
        @@count = @@count + 1;
        @@genres << genre;
        @@artists << artist

        @name = name
        @artist = artist
        @genre = genre
        key = genre;
       if @@genre_count.has_key?(key)
           @@genre_count[key] = @@genre_count[key] + 1
       else
           @@genre_count[key] = 1
       end

      key = artist
       if @@artist_count.has_key?(key)
          @@artist_count[key] = @@artist_count[key] + 1
       else
          @@artist_count[key] = 1
          def self.artists
        #return only a unique array of artists
        @@artists.uniq
    end

    def self.artist_count()
        #puts ("Artist_count:  #{@@artist_count}")
        return @@artist_count
    end


    def self.genre_count
        #return the hash of genres
       @@genre_count
    end

    def self.count
        #return the count of Songs from all artists
        @@count
    end


    def self.genres
        #return unique hash of genres
        @@genres.uniq
   end
  end
 end
end