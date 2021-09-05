# here we are passing a block of code
# the block of code takes in a parameter,
# that is provided in this example by times method
3.times do |i|
  puts i
end

# same as above, just different syntax
3.times { |i| puts i }

puts '--------------'

# functional aspects of ruby, passing
# behaviour to a method. Below we pass
# a code block to the collect method.
# The collect method iterates over
# an array and applies the passed behaviour
# to each of the items in the array.

# Below we double the elements of the array
single = [2, 3, 4, 5]
doubled = single.collect { |x| x * 2 }
p doubled

# in ruby we can treat functions
# as first class objects, and pass them
# as arguments.

# (i) We can either create anonymous functions
# and pass them as arguments
single = [2, 3, 4, 5]
doubled = single.collect { |x| x * 2 }
p doubled

def double(num)
  num * 2
end

doubled = single.collect { |num| double(num) }
p doubled

# (ii) or pass pre-defined functions as well

puts '--------------'

# blocks can be converted to fully formed objects:
a = Proc.new { |x| x = x * 10; puts(x) }
b = lambda { |x| x = x * 20; puts(x) }
c = proc { |x| x = x * 30; puts(x) }

puts a.class
puts b.class
puts c.class

a.call(100)
b.call(50)
c.call(33.33)

puts '---------------'

# The `yield` keyword expects a block.
# And when it does receive a block of code
# the `yield` keyword causes that block to execute
def aMethod
  puts 'In aMethod'
  yield
end

# this is how we pass a block to the yield inside `aMethod`
aMethod { puts 'inside yield of aMethod' }

# if we want to pass an argument to the `yield`,
# we input it in as a normal argument and pass it to yield
def caps(word)
  puts 'In caps method'
  yield(word)
end

# this is how we pass an argument to the
# yield inside `caps` method
caps('word') { |x| x.upcase!; puts(x) }

# another way to pass block methods is to pass
# an parameter with the prefix `&`. Eg: caps(word, &block)
# `&` signifies that a block must be passed
def capsV2(word, &block)
  puts 'In capsV2 method'
  block.call(word)
end

# we pass the argument and the block in a
# similar way as before
capsV2('wordv2') { |x| x.upcase!; puts(x) }

puts '---------------'

# In the real world, we could come across a situation
# where a method has a `yield` but a block is not passed
# in such cases, the program crashes.
# To deal with these kind of situations, ruby offers
# `block_given?` method, which evaluates to true only
# when a block of code is passed in
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

puts '---------------'

# still yet to discover how we pass methods **with parameters**
# below code is fails to compile

# def mathOperation(a, b, addMethod = :add, subMethod = :sub)
#   puts addMethod.call(a, b)
#   puts subMethod.call(a, b)
# end
#
# def add(a, b)
#   a + b
# end
#
# def sub(a, b)
#   a - b
# end
#
# mathOperation(3, 2, add, sub)

puts '---------------'
