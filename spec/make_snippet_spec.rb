require "make_snippet"

describe "make_snippet" do
  it "return first five cha of string" do
    result = make_snippet("Hello how are you doing")
    expect(result).to eq "Hello how are you doing"
  end

  it " return first five words followed by ... iof string greater than 5" do
    result = make_snippet("Hello hows is everything going today")
    expect(result).to eq "Hello hows is everything going..."
  end
end
