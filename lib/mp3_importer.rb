class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    puts @path
    Dir["#{@path}*.rb"]
  end
end