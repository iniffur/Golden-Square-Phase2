# {{ToDo_Check}} Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE


check_for_todo = todo_check(text)

text: a string (e.g. "#TODO: hello world")
check_for_todo: will check string for characters: "#TODO" - return true if so

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

todo_check("") => "Please input a valid string"
todo_check(2) => "Please input a valid string"
todo_check("TODO thing") => false
todo_check("#TODO thing") => true

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
