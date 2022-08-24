require "todo"
require "todo_list"

RSpec.describe "integration test" do
    it "adds todo items to todo list - returns as incomplete" do
        todo_list = TodoList.new
        todo1 = Todo.new("Walk the dog")
        todo2 = Todo.new("Water the plants")
        todo_list.add(todo1)
        todo_list.add(todo2)
        expect(todo_list.incomplete).to eq [todo1, todo2]
    end

    context "marks todo list items as complete" do
        it "updates incomplete list when tasks completed" do
            todo_list = TodoList.new
            todo1 = Todo.new("Walk the dog")
            todo2 = Todo.new("Water the plants")
            todo_list.add(todo1)
            todo_list.add(todo2)
            todo1.mark_done!
            expect(todo_list.incomplete).to eq [todo2]
        end

        it "adds to complete list when tasks completed" do
            todo_list = TodoList.new
            todo1 = Todo.new("Walk the dog")
            todo2 = Todo.new("Water the plants")
            todo_list.add(todo1)
            todo_list.add(todo2)
            todo1.mark_done!
            expect(todo_list.complete).to eq [todo1]
        end
    end

    it "marks all tasks as complete when 'gives up'" do
        todo_list = TodoList.new
        todo1 = Todo.new("Walk the dog")
        todo2 = Todo.new("Water the plants")
        todo_list.add(todo1)
        todo_list.add(todo2)
        todo_list.give_up!
        expect(todo_list.complete).to eq [todo1, todo2]
    end
end