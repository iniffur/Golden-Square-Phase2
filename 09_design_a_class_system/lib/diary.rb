class Diary
    def initialize
        @entries = []
    end
  
    def add(entry) 
        @entries << entry
    end
  
    def read_all
        @entries
    end
  
    def count_words
      @entries.map.sum do |entry|
        entry.count_words
      end
    end

    def reading_time(wpm)
      fail "Please enter a valid reading time" unless wpm > 0
      @reading_time = (count_words / wpm.to_f).ceil
    end
    
    def most_readable_entry(wpm, minutes) # wpm is reading speed, minutes is available time given - both integers
      fail "Please enter a valid amount of time" unless minutes > 0
      readable_entries = @entries.filter do |entry|
        entry.reading_time(wpm) <= minutes
      end
      readable_entries.max_by do |entry|
        entry.count_words
      end
    end
  end