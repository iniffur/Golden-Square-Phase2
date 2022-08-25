require "diary"

RSpec.describe Diary do
    it "returns empty array if no diary entries given" do
        diary = Diary.new
        expect(diary.read_all).to eq []
    end
end