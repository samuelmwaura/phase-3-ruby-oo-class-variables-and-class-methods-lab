class Song 
    attr_accessor :name, :artist ,:genre
    @@count = 0
    @@artists = []
    @@genres= []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << genre  #shovel the value of the value of the genre
        @@artists << artist #shovel the value of the created artist
    end

    def self.count
        @@count  #Note the implicit return value
    end

    def self.genres
        @@genres.uniq  #Implicitly returns an array of only the uniq values for genres in the array.
    end

    def self.artists
        @@artists.uniq 
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
            genre_count[genre] += 1            
           else
            genre_count[genre] = 1          
            end
        end
         genre_count 
    end


    def self.artist_count
        @@artists.tally  #Takes  an element in the array and tallies the occurences of each element and returns a hash
    end


end


