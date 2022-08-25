require "diary_entry"

RSpec.describe DiaryEntry do
    it "constructs" do
        diary_entry = DiaryEntry.new("Title", "Contents")
        expect(diary_entry.title).to eq "Title"
        expect(diary_entry.contents).to eq "Contents"
    end

    it "counts the number of words in a given diary entry's contents" do
        diary_entry = DiaryEntry.new("Title", "This is the Contents")
        expect(diary_entry.count_words).to eq 4
    end

    it "gives a reading time" do
        diary_entry = DiaryEntry.new("Title", "This is the Contents" * 50)
        expect(diary_entry.reading_time(200)).to eq 1
    end
end  