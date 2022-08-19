class GrammarStats
    def initialize
        @number_of_texts = 0 
        @number_of_passed_tests = 0
    end
  
    def check(text) 
        if text.is_a? String
            if text.length == 0 
                fail "Please enter a valid string."
            elsif text[0] == text[0].upcase && text[-1] == ("." || "!" || "?")
                @number_of_passed_tests += 1
                @number_of_texts += 1
                return true
            else
                @number_of_texts += 1
                return false
            end
        end
        fail "Please enter a valid string." unless text.is_a? String
    end
  
    def percentage_good
        percentage_passed = ((@number_of_passed_tests.to_f/@number_of_texts.to_f) * 100).to_i
        return percentage_passed
    end
end