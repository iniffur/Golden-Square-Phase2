def grammar_check(text)
    if text.is_a? String
        if text.length == 0 
            fail "Please enter a valid string."
        elsif text[0] == text[0].upcase && text[-1] == ("." || "!" || "?")
            return true
        else
            return false
        end
    end
    fail "Please enter a valid string." unless text.is_a? String
end