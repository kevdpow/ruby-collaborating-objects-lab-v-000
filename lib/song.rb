class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(file_name)
    parts = file_name.split(" - ")
    artist_name = parts[0]
    song_name = parts[1].gsub(".mp3", "")
    song = self.new(song_name)
    self.artist = artist_name
    song
  end

end
