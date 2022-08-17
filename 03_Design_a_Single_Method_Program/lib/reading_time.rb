def reading_time(text)
  if text.is_a? String
    return calculate_reading_time = ((text.split(" ").size) / 200.0)
  end
  fail "this is not a string!" unless text.is_a? String
end
