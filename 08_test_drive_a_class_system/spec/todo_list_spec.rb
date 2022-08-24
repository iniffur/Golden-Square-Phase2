require "todo_list"

RSpec.describe TodoList do
    it "returns empty list of incomplete tasks if no entries" do
        todo_list = TodoList.new
        expect(todo_list.incomplete).to eq []
    end

    it "returns empty list of complete tasks if no entries" do
        todo_list = TodoList.new
        expect(todo_list.complete).to eq []
    end

    it "returns empty list if gives up with no tasks" do
        todo_list = TodoList.new
        expect(todo_list.give_up!).to eq []
    end
end