def todo_check(text)
    if text.is_a? String
        if text.length == 0
            fail "Please input a valid string."
        elsif text.include?("#TODO")
            return true
        else
            return false
        end
    end
    fail "Please input a valid string."
end

