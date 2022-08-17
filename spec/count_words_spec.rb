require "count_words"

describe "word count method" do
  it "returns the number of words in a given string" do
    result = count_words("Hello my name is James")
    expect(result).to eq 5
  end
end
