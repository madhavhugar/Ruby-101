# frozen_string_literal: true
# for loops

nums = [1, 2, 3, 4, 5]

hash = { 'one' => '1', 'two' => '2' }

nums.each do |i|
  puts i
end

puts '--------------'

hash.each do |i|
  p i
end

puts '--------------'

hash.each do |key, value|
  puts "#{key}: #{value}"
end

puts '--------------'

nums.each { |x| puts x }

puts '--------------'

i = 0
while i < nums.length
  puts nums[i]
  i += 1
end

puts '--------------'
i = 0
begin
  puts nums[i]
  i += 1
end while i < nums.length

puts '--------------'

# until is 'while not'
i = 0
until i > nums.length
  puts nums[i]
  i += 1
end

puts '--------------'

i = 0
begin
  puts nums[i]
  i += 1
end until i > nums.length

puts '--------------'

i = 0
loop do
  puts nums[i]
  i += 1
  break if i > nums.length
end

puts '--------------'

nested_nums = [[1, 2, 3, 4], [4, 5, 6, 7], [8, 9, 10, 11]]

# using multiple iterator variables
nested_nums.each do |(a, b, c, d)|
  puts "a=#{a}; b=#{b}; c=#{c}; d=#{d}"
end

puts '--------------'

0.upto(5) do
|i|
  puts i
end

5.downto(0) do
|i|
  puts i
end

puts '--------------'

for i in 1..5 do
  puts i
end

(1..5).each do |i|
  puts i
end

puts 'end'
