puts 'Hello, world'
world = 'world'
puts "Hello, #{world}"

def say_hello(name)
  puts "hello, #{name}"
end

input = gets
say_hello(input)
