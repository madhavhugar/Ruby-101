# array literal
a = [1, 2, 3, 4, 5]
p a

b = %w[a b c]

p b

# mixed arrays
c = [1, 'x', [23, 23], b, a]

p c

# accessing array elements
puts c[1]
puts c[c.length - 4]

p c[1..3]

# accessing array elements out of bounds does not raise error, instead returns 'nil'
p c[999] # == nil
