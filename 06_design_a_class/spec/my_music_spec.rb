require "my_music.rb"

RSpec.describe MyMusic do
  context "Returns a failure message when given an empty string" do
    it "fails" do
      music = MyMusic.new
      expect{music.add_music("")}.to raise_error "No music added"
    end
  end
  it "Returns the music list after adding a track" do
    music = MyMusic.new
    result = music.add_music("Alright, Kendrick Lamar")
    expect(result).to eq ["Alright, Kendrick Lamar"]
  end
  it "Returns the music list when added two tracks" do
    music = MyMusic.new
    music.add_music("Alright, Kendrick Lamar")
    result = music.add_music("Lego house, Ed Sheeran")
    expect(result).to eq ["Alright, Kendrick Lamar", "Lego house, Ed Sheeran"]
  end
  context "Throws an error if given an integer" do
    it "fails" do
      music = MyMusic.new
      expect{ music.add_music(4)}.to raise_error "Please enter a valid track"
    end
  end  
end