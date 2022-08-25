# {{Diary & Todo List}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

> As a user
> So that I can record my experiences
> I want to keep a regular diary

> As a user
> So that I can reflect on my experiences
> I want to read my past diary entries

> As a user
> So that I can reflect on my experiences in my busy day
> I want to select diary entries to read based on how much time I have and my reading speed

> As a user
> So that I can keep track of my tasks
> I want to keep a todo list along with my diary

> As a user
> So that I can keep track of my contacts
> I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```
┌────────────────────────────┐
│ TodoList                   │
│                            │
│ - initializes empty todo   |
|   array                    │
│ - add todo items           │
│ - show all todos           │
│                            │
└───────────┬────────────────┘
            │
            │ owns a list of
            ▼
┌─────────────────────────┐
│ Todo(title)             │
│                         │
│ - initializes todo      │
│                         │
│                         │
│                         │
└─────────────────────────┘


┌────────────────────────────┐
│ Contacts                   │
│                            │
│ - initialize name and number│
│ - extract number from diary│
│                            │
│                            │
└───────────┬────────────────┘
            │
            │
            ▼
┌────────────────────────────┐
│ Diary                      │
│                            │
│ - add entries              │
│ - read all entries         │
│ - find readable entries    │
│   based on wpm             │
└───────────┬────────────────┘
            │
            │ owns a list of
            ▼
┌─────────────────────────┐
│ Diary Entries           │
│                         │
│ - initializes title &   │
│   contents              │
│                         │
│                         │
└─────────────────────────┘
```

_Also design the interface of each class in more detail._

```ruby

class Contacts
  def initialize(diary) # instance of Diary
  end

  def extract_numbers
    #returns list of contact numbers found in full diary
  end
end

class Diary
  def initialize
    # initializes empty array of diary entries
  end

  def add(entry) # entry is an instance of DiaryEntry
    # entry gets added to the diary
  end

  def read_all
    # returns full list of all diary entries
  end

  def count_words
    # returns a total word count
  end

  def reading_time
    # reutrns reading time with wpm
  end

  def most_readable_entry(wpm, minutes) # wpm is reading speed, minutes is available time given - both integers
    # Returns the longest diary entry that can be read in a given amount of time (minutes) with an appropriate reading speed (wpm)
  end
end

class DiaryEntry
  def initialize(title, contents) # title and contents are both strings
    # initializes title and contents
  end

  def title
    # Returns title
  end

  def contents
    # Returns contents
  end

  def count_words
    # returns number of words in diary entry
  end
end

class TodoList
  def initialize
    # initializes empty arraw of list items
  end

  def add(todo) # todo is an instance of Todo

  end

  def show_list
    # returns all list items
  end
end

class Todo
  def initialize(task) #todo_title is a string
    # initializes todo title
  end

  def task
    #returns todo_title
  end
end

```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# EXAMPLE

# Gets all diary entries
diary = Diary.new
diary_entry_1 = DiaryEntry.new("Monday", "Today I Cooked Lasagna")
diary_entry_2 = DiaryEntry.new("Tuesday", "Today I Watered The Plants")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.read_all # => [diary_entry_1, diary_entry_2]

# Gets most readable entry
diary = Diary.new
diary_entry_1 = DiaryEntry.new("Monday", "Today I Cooked Lasagna")
diary_entry_2 = DiaryEntry.new("Tuesday", "Today I Watered The Plants " * 20)
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.most_readable_entry(100, 1) # [diary_entry_2]

# Gets all todos
todo_list = TodoList.new
todo_1 = Todo.new("Clean the bath")
todo_2 = Todo.new("Empty the dishwasher")
todo_list.add(todo_1)
todo_list.add(todo_2)
todo_list.show_list # [todo_1, todo_2]

# Gets contact numbers found in diary
diary = Diary.new
diary_entry_1 = DiaryEntry.new("Monday", "Today I Cooked Lasagna")
diary_entry_2 = DiaryEntry.new("Tuesday", "I called my friend bob on: 07900088088")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
contacts = Contacts.new(diary)
contacts.extract_numbers # [07900088088]

```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE

# Constructs new diary
diary = Diary.new
diary.read_all # => []

# Constructs new diary entry
diary_entry = DiaryEntry.new("Monday", "Today I Cooked Lasagna")
diary_entry.title # => "Monday"

# Constructs new todo list
todo_list = TodoList.new
todo_list.show_list # => []

# Constructs a new todo
todo = Todo.new("Clean the bath")
todo.task # => "Clean the bath"

```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
