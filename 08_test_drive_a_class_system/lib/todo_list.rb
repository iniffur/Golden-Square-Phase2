class TodoList
    def initialize
      return @list_items = []
    end
  
    def add(todo) # todo is an instance of Todo
      @list_items << todo
    end
  
    def incomplete
      # Returns all non-done todos
    end
  
    def complete
      # Returns all complete todos
    end
  
    def give_up!
      # Marks all todos as complete
    end
  end