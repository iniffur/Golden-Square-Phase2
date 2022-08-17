# {{grammar_check}} Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE


check_capital = grammar_check(text)
check_punctuation = grammar_check(text)

text: a string (e.g. "hello world")
check_capital: will return true or false value depending on whether string starts with a capital letter
check_punctuation: will return true or false value depedning on whether string ends in punctuation mark (!.?)

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

grammar_check("hello world") => false
grammar_check("Hello world") => false
grammar_check("Hello world.") => true
grammar_check("Hello world?") => true
grammar_check(100) => returns an error

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
