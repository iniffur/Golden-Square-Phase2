class TodoList
    def initialize
      return @list_items = []
    end
  
    def add(todo) # todo is an instance of Todo
      @list_items << todo
    end
  
    def incomplete
      ## .select is used to only SELECT todos that have not been completed
      @list_items.select do |todo|
        !todo.done?
      end
    end
  
    def complete
      ## .select is used to only SELECT todos that have been completed
      @list_items.select do |todo|
        todo.done?
      end
    end
  
    def give_up!
      @list_items.map do |todo|
        todo.mark_done!
      end
    end
end