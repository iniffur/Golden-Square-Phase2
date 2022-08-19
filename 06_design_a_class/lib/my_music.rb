class MyMusic
  def initialize
    @music = []
  end

  def add_music(track)
    fail "Please enter a valid track" if !track.is_a? String
    fail "No music added" if track.empty?
    @music.push(track)
  end
end