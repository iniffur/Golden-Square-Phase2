require "grammar_stats"

RSpec.describe GrammarStats do
    it "check if string is empty" do
        grammar_stats = GrammarStats.new
        expect { grammar_stats.check("") }.to raise_error "Please enter a valid string."
    end

    it "gives an error if a string isn't given" do
        grammar_stats = GrammarStats.new
        expect { grammar_stats.check(14) }.to raise_error "Please enter a valid string."
    end

    it "returns false if string is not capitalised" do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("hello world.")
        expect(result).to eq false
    end

    it "returns false if string does not end in punctuation mark" do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("Hello world")
        expect(result).to eq false
    end

    it "returns true if string is capitalised AND ends in punctuation mark" do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("Hello world.")
        expect(result).to eq true
    end

    it "returns percentage of tests passed" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Hello world.")
        grammar_stats.check("Hello world")
        result = grammar_stats.percentage_good
        expect(result).to eq 50
    end
end