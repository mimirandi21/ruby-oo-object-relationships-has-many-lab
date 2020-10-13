
class Artist
    attr_accessor :name, :song, :songs
    def initialize(name ="nil")
        @name = name
        @songs = []
        @@song_count = 0
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        @songs << song
        song.artist = self
        @@song_count += 1
    end

    def add_song_by_name(name)     
        song = Song.new(name)     
        song.artist = self
        @songs << song
        @@song_count += 1
    end

    def self.song_count
        Song.all.count
        
    end
end
