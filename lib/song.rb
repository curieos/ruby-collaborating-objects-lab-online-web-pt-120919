class Song 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = nil
    save
  end
  
  def new_from_filename(filename)
    filename.slice!
  end
  
  def save
    @@all << self
  end
  
  def artist
    @artist
  end
  
  def artist=(artist)
    @artist = artist
    return if artist.songs.include?(self)
    artist.songs << self
  end
  
  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
  
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end
  
  def self.all
    @@all
  end
end