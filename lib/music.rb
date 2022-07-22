class Music

  def initialize
    @track_list = []
  end  
  
  def add_tracks(track)
    @track_list << track
  end

  def list_tracks
    return @track_list
  end

end
