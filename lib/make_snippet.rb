def make_snippet(str)
  array = str.split(" ")
  if array.size <= 5
    return str
  else
    first_five = str.split[0..4].join(" ")
    first_five += "..."
  end
end
