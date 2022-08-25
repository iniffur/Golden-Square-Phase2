class Contacts
    def initialize(diary) # instance of Diary
        @diary = diary
    end
  
    def extract_numbers
      #returns list of contact numbers found in full diary
      @diary.read_all.flat_map do |entry|
        entry.contents.scan(/[0-9]{11}/)
      end.uniq
    end
  end


  ## flat_map -> only returns if found within loop