class DiaryEntry
    def initialize(title, contents) # title and contents are both strings
        @title = title
        @contents = contents
    end
  
    def title
        @title
    end
  
    def contents
        @contents
    end
    
    def count_words
        return @contents.split(" ").length
    end

    def reading_time(wpm)
        (count_words / wpm.to_f).ceil
    end
  end