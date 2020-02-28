class Artist 
  attr_accessible :name, 
  @@all = []
  
  def songs 
    Song.all.select{|song|song.artist == self}
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def genres 
    genres = []
    songs.each do |song|
      genres << song.genre 
    end
    genres
  end
  
end 