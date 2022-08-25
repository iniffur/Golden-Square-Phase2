require "Todo_List"

RSpec.describe TodoList do
    it "Returns empty list array" do
        todo_list = TodoList.new
        expect(todo_list.show_list).to eq []
    end
end