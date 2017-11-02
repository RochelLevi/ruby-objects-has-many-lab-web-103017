class Song
  def initialize(name)
    @name = name
    Artist.song_count += 1
  end

  attr_accessor :artist
  attr_reader :name

  def artist_name
    self.artist ? self.artist.name : self.artist
  end

end
