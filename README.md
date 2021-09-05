## Ruby for Programmers

- Interpretted language

- Duck typed language: Languages where we don’t have to explicitly state the type of a variable.

- Ruby has meta-programming: avoid it => code can be changed while it is running

- Ruby on Rails is an MVC framework

**Strings**

- Two types of string literal: double quotes and single quotes => only double quotes evaluate between `#{variable}`
  or `#{3+2}`
- << operator can be used to concatenate two strings
    - `welcome = "hello" << "world"`
- `chomp` removes the new-line character `\n` from a given string: `s.chomp`
- `chop` can be used to remove the last character in a given string: `s.chop`
- `printf` can be used for string formatting
- [strings ruby docs](https://ruby-doc.org/core-2.6/String.html)

**Classes**

- function calls or method calls need not be invoked with parentheses `()`
- instance variables need not be pre-declared and start with the `@` symbol
- inheritance:
    - `class Dog < Animal`
    - pass parent class constructor variables via super method
- we use `@@var` for static variables
- to declare static method for `class Foo`, we define `def Foo.staticMethod` within class definition
- easy way to create getters and setters, for a variable name: `attr_reader :name`, `attr_writer :name`
  , `attr_accessor :name`

**Modules**

- We can access module variables using scope resolution operator `::`
  ```ruby
    module MyModule
      PI = 3.14
    end
  
    puts MyModule::PI
  ```
- We can access module methods using scope resolution operator `.`
  ```ruby
    module MyModule
      def MyModule.add(a,b)
        a+b
      end
    end
  
    puts MyModule.add(2,2)
  ```
- modules need to be `include`d before their constants, attributes or methods can be used without scope resolution
  ```ruby
    module MyModule
      def MyModule.add(a,b)
        a+b
      end
    end
  
    include MyModule
    puts add(2,2)
  ```
- modules can be `include`d into multiple classes to enable the class to have additional behavior

**Arrays and Hashes**

- An array literal: `c = [1, 'x', [23, 23]]`. An array index is always an integer
- accessing array elements out of bounds does not raise error, instead returns `nil` :thinking:

- A hash literal:
    - `hash_literal = { 'key': 'value' }` and to access elements `hash_literal[:key]`
    - `hash_literal = { 2 => 'value' }` and to access elements `hash_literal[2]`
- A hash index can be any object (for custom objects, we might want to override `hash` and `eq?` for user defined hash
  keys)
- Hash elements can be given a default value (which is by default set to `nil`)
    - `hash_with_default_value = Hash.new('default_value')`

- how you define the hash, defines how you can access the hash elements :shrugging:

```ruby
hash_literal = { 'key': 'value' }
puts hash_literal.has_key?(:array) # true
puts hash_literal.has_key?('array') # false
```
