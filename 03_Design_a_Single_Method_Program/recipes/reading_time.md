# {{Reading_Time}} Method Design Recipe

## 1. Describe the Problem


> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE


calculate_reading_time = reading_time(text)

text: a string (e.g. "hello world")
calculate_reading_time: a number, time taken to read text (e.g. 0.01 minutes)

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

reading_time("hello world") => 0.01
reading_time("hello word agian again") => 0.02
reading_time(100) => throws an error

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
