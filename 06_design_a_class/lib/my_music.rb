class MyMusic
  def initialize
    @music = []
  end

  def add_music(track)
    fail "No music added" if track.empty?
  end
end