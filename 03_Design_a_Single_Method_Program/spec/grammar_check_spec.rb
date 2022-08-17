require "grammar_check"

RSpec.describe "grammar_check" do
    it "gives an error if string is empty" do
        expect { grammar_check("") }.to raise_error "Please enter a valid string."
    end

    it "gives an error if a string isn't given" do
        expect { grammar_check(14) }.to raise_error "Please enter a valid string."
    end

    it "returns false if string is not capitalised" do
        result = grammar_check("hello world.")
        expect(result).to eq false
    end

    it "returns false if string does not end in punctuation mark" do
        result = grammar_check("Hello world")
        expect(result).to eq false
    end

    it "returns true if string is capitalised AND ends in punctuation mark" do
        result = grammar_check("Hello world.")
        expect(result).to eq true
    end

    it "returns true if string is capitalised AND ends in punctuation mark" do
        result = grammar_check("Hello .world")
        expect(result).to eq false
    end

end