def get_most_common_letter(text)
    counter = Hash.new(0)
    text.chars.each do |char|
      counter[char] += 1
    end
    p counter
    counter.to_a.max_by { |k, v| v }[0][0]
  end

  puts get_most_common_letter("hello")