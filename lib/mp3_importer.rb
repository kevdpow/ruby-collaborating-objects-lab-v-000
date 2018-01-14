class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir["#{path}/*.mp3"]
    @files.collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end

end
