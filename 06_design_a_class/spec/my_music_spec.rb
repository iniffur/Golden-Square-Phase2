require "my_music.rb"

RSpec.describe MyMusic do
  context "Returns a failure message when given an empty string" do
    it "fails" do
      music = MyMusic.new
      expect{music.add_music("")}.to raise_error "No music added"
    end
  end
end