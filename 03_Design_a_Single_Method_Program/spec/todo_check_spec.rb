require "todo_check"

RSpec.describe "todo_check" do
    it "checks if a string is empty" do
        expect { todo_check("") }.to raise_error "Please input a valid string."
    end
    
    it "checks if input is not a string" do
        expect { todo_check(4)}.to raise_error "Please input a valid string."
    end

    it "checks a string without '#TODO'" do
        result = todo_check("string")
        expect(result).to eq false
    end    
    it "checks a string with '#TODO'" do
        result = todo_check("#TODO thing")
        expect(result).to eq true   
    end 
    
end