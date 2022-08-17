require "reading_time"

describe "reading time estimate" do
  it "reading time based on 200 words per minute" do
    result = reading_time("hello world")
    expect(result).to eq 0.01
  end

  it "error ouputed if no string is given" do
    expect { reading_time(1234) }.to raise_error "this is not a string!"
  end
end
