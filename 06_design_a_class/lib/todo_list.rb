class ToDoList
    def initialize
      @list_array = []
    end
  
    def add_to_list(list_item)
      # return todo list 
      if list_item.empty?
        fail "Please enter a valid string"
      else
        return @list_array.push(list_item)
      end
    end
  
    def remove_from_list(completed)
      if @list_array.include? completed
        @list_array -= [completed]
        return "Task '#{completed}' has been completed"
    else
        fail "Task is not on the to do list"
    end
end
end