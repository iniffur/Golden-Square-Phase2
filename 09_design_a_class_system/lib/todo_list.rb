class TodoList
    def initialize
       @list_items = []
    end
  
    def add(todo) # todo is an instance of Todo
        @list_items << todo
    end
  
    def show_list
        @list_items
    end
  end