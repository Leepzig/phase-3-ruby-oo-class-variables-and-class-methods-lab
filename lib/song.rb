
require "pry"

class Song 

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
  end

  attr_accessor :name, :artist, :genre

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

    # def make_histogram(array)
    #   genre_count = {}
    #   array.each do |genre|
    #     if genre_count[genre]
    #       genre_count[genre] += 1
    #     else
    #       genre_count[genre] = 1
    #     end
    #   end
    #   genre_count
    # end

    def self.artist_count
      genre_count = {}
      @@artists.each do |genre|
        if genre_count[genre]
          genre_count[genre] += 1
        else
          genre_count[genre] = 1
        end
      end
      genre_count
    end

    # def self.genre_count
    #   make_histogram(@@genres)
    # end

    
end

# ball = Song.new("Exc", "Miley", "rock")
# love = Song.new("love", "billy Joel", "rock")
# lemonade = Song.new("lemonade", "beyonce", "hiphop")
