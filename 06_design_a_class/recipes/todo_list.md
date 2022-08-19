# {{ToDo List}} Class Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class ToDoList
  def initialize
    # @list_array = 0   -> empty list array
  end

  def add_to_list(list_item) # list_item is a string
    # will add list_item to list array
    # return todo list
  end

  def remove_from_list(list_item)
    # If list_item currently exists within list array - remove from list
    # Return string saying task is complete
  end

end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo_list = ToDoList.new
todo_list.add_to_list("Walk the dog") # => ["Walk the dog"]

# 2
todo_list = ToDoList.new
todo_list.add_to_list("Walk the dog") # => ["Walk the dog"]
todo_list.add_to_list("Walk the cat") # => ["Walk the dog", "Walk the cat"]
todo_list.remove_from_list("Walk the dog") # => ["Walk the cat"]

#3
todo_list = ToDoList.new
todo_list.remove_from_list("Walk the dog") # => ["Walk the cat"] # => ERROR - No list items to remove

#4
todo_list = ToDoList.new
todo_list.add_to_list("") # => Error string is empty
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
