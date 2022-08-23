class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @final_word = 0
    end
  
    def title
        if @title.length == 0
            fail "Please enter a valid string."
        else
            return @title
        end
    end
  
    def contents
        if @contents.length == 0
            fail "Please enter a valid string."
        else
            return @contents
        end
    end
  
    def count_words   
      return @contents.split(" ").length
      return 0 if @contents.empty?
    end
    
  
    def reading_time(wpm) 
        fail "Please enter a valid reading time" unless wpm > 0  
        (count_words / wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes) 
        @number_of_words = wpm * minutes
        @initial_point = @final_word
        @final_point = @final_word + @number_of_words
        @chunk = @contents.split[@initial_point...@final_point].join(" ")
            if @final_point > @contents.split(" ").length
                @final_word = 0
            else
                @final_word = @final_point
            end
        return @chunk
    end
end
