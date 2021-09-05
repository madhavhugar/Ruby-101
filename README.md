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

**Loops and iterators**

- we have `for`, `while`, `until`, `loop` (and `each`) as looping constructs in ruby
- to define range use `1..10` syntax; for example `for i in 1..10 do puts i end`
  **Blocks and Procs**

A Ruby block may be regarded as a sort of nameless function or method and its most frequent use is to provides a means
of iterating over items from a list or range of values. Blocks may either be delimited by curly brackets { and } or by
the keywords do and end. Variables declared at the start of a block between upright bars such as |i| can be treated like
the arguments to a named method and are called ‘block parameters’. Blocks are often used as iterators with items from a
collection or range passed into the block and assigned to the block parameters. This block iterates over the items in an
array:

```ruby
  [1, 2, 3].each { |i| puts(i) }
```

- The `yield` keyword expects a block. And when it does receive a block of code the `yield` keyword causes that block to
  execute

```ruby

def aMethod
  puts 'In aMethod'
  yield
end
```

this is how we pass a block to the yield inside `aMethod`

```ruby
  aMethod { puts 'inside yield of aMethod' }
```

if we want to pass an argument to the `yield`, we input it in as a normal argument and pass it to yield

```ruby

def caps(word)
  puts 'In caps method'
  yield(word)
end
```

this is how we pass an argument to the yield inside `caps` method

```ruby
  caps('word') { |x| x.upcase!; puts(x) }
```

another way to pass block methods is to pass an parameter with the prefix `&`. Eg: caps(word, &block)
`&` signifies that a block must be passed

```ruby

def capsV2(word, &block)
  puts 'In capsV2 method'
  block.call(word)
end
```

we pass the argument and the block in a similar way as before

```ruby
  capsV2('wordv2') { |x| x.upcase!; puts(x) }
```

In the real world, we could come across a situation where a method has a `yield` but a block is not passed in such
cases, the program crashes. To deal with these kind of situations, ruby offers
`block_given?` method, which evaluates to true only when a block of code is passed in

```ruby

def foo(arg)
  puts 'in foo'
  if block_given?
    puts 'block provided, executing it now'
    yield(arg)
  else
    puts 'no block provided, nothing to execute'
  end
end

foo('hello') { |x| puts x.upcase! }
foo('hello')
```

**Files**

- when we open a file we need to close it

- when we use a block the file is closed implicitly

```ruby
  File.open('text.log', 'w') { |textFile| puts textFile.size }
```

- when we do not use a block, we need to close it explicitly

```ruby
  f = File.open("text.log", 'w')
f.close
```
