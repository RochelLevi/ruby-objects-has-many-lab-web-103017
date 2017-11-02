class Artist

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.song_count=(num)
    @@song_count = num
  end

  attr_accessor :name
  attr_reader :songs

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@song_count
  end
end
