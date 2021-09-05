# when we open a file we need to close it

# when we use a block the file is closed implicitly
File.open('text.log', 'w') { |textFile| puts textFile.size }

# when we do not use a block, we need to close it explicitly
f = File.open("text.log", 'w')
f.close