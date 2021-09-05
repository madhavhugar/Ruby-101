h1 = Hash.new
h2 = Hash.new('default')

h1[1] = 'abc'
h1[2] = 'xyz'

p h1
p h1[3] # returns nil, which is the default value of the hash

puts h2[3] # returns default, which is the default value of the hash

hash_literal = {
  'key': 'value'
}

p hash_literal

multihash = {
  'one': 1,
  2 => 'two', # old syntax for defining hashes in ruby `{ 'key' => 'value' } == { 'key': 'value' }`
  'array': [1, 2, 3],
  'nestedhash': { 'a': 'b' }
}

p multihash
puts multihash[2] # accessing hash key when declared with "=>"

p multihash[:array] # accessing hash key when declared with ":"

puts multihash.has_key?(:array) # true
puts multihash.has_key?('array') # false

multihash.delete(:array)
p multihash
