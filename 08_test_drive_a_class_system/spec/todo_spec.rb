require "todo"

RSpec.describe Todo do
    it "constructs" do
        todo = Todo.new("Walk the dog")
        expect(todo.task).to eq "Walk the dog"
    end

    it "returns error if string is empty" do
        todo = Todo.new("")
        expect { todo.task }.to raise_error "Please enter a valid task"
    end

    it "marks todo as done" do
        todo = Todo.new("Walk the dog")
        expect(todo.mark_done!).to eq true
    end

    it "returns false if todo isn't done" do
        todo = Todo.new("Wash the dishes")
        expect(todo.done?).to eq false
    end
end