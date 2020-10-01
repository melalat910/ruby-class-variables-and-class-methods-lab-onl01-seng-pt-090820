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
end
end
