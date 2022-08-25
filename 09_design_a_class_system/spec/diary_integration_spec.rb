require "diary"
require "diary_entry"
require "contacts"

RSpec.describe "integration" do
    it "returns a list of all diary entries" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Monday", "Today I Cooked Lasagna")
        diary_entry_2 = DiaryEntry.new("Tuesday", "Today I Watered The Plants")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.read_all).to eq [diary_entry_1, diary_entry_2]
    end

    it "returns a total word count" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Monday", "Today I Cooked Lasagna")
        diary_entry_2 = DiaryEntry.new("Tuesday", "Today I Watered The Plants")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.count_words).to eq 9
    end
    
    it "returns a reading time" do
        diary = Diary.new
        diary_entry = DiaryEntry.new("Monday", "Today I Cooked Lasagna " * 50)
        diary.add(diary_entry)
        expect(diary.reading_time(200)).to eq 1
    end

    it "makes sure reading time is greater than zero" do
        diary = Diary.new
        diary_entry = DiaryEntry.new("Monday", "Today I Cooked Lasagna " * 50)
        diary.add(diary_entry)
        expect{diary.reading_time(0)}.to raise_error "Please enter a valid reading time"
    end

    it "makes sure a valid amount of time is given" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Monday", "Today I Cooked Lasagna")
        diary_entry_2 = DiaryEntry.new("Tuesday", "Today I Watered The Plants " * 20)
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect{ diary.most_readable_entry(100, 0) }.to raise_error "Please enter a valid amount of time"
    end
    
    it "returns the most readable entry with a given wpm and minutes" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Monday", "Today I Cooked Lasagna")
        diary_entry_2 = DiaryEntry.new("Tuesday", "Today I Watered The Plants " * 20)
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.most_readable_entry(100, 1)).to eq diary_entry_2
    end

    it "Gets contact numbers found in the diary" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Monday", "Today I Cooked Lasagna")
        diary_entry_2 = DiaryEntry.new("Tuesday", "I called my friend bob on: 07400022022")
        diary_entry_3 = DiaryEntry.new("Wednesday", "Today I met a friend, his number was 07556000000")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        diary.add(diary_entry_3)
        contacts = Contacts.new(diary)
        expect(contacts.extract_numbers).to eq ["07400022022", "07556000000"]
    end

    it "Only returns numbers of a certain length - 11 numbers long" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Monday", "Today I Cooked Lasagna 16 times")
        diary_entry_2 = DiaryEntry.new("Tuesday", "I called my friend bob on: 07400022022")
        diary_entry_3 = DiaryEntry.new("Wednesday", "Today I had 4 cups of tea")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        diary.add(diary_entry_3)
        contacts = Contacts.new(diary)
        expect(contacts.extract_numbers).to eq ["07400022022"]
    end
end