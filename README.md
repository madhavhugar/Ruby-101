## Ruby for Programmers

- Interpretted language

- Duck typed language: Languages where we don’t have to explicitly state the type of a variable.

- Ruby has meta-programming: avoid it => code can be changed while it is running Ruby on Rails is an MVC framework

**Strings**

- Two types of string literal: double quotes and single quotes => only double quotes evaluate between "#{variable}" or "
  # {3+2}"
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
- modules need to be `include`d before they can be used without scope resolution
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
