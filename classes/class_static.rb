
class Doggy
  @@num_of_dogs = 0

  def initialize(name)
    @name = name
    @@num_of_dogs += 1
  end

  def Doggy.showInfo
    puts "total num of dogs: #{@@num_of_dogs}"
  end
end

tom = Doggy.new('tom')
hash = Doggy.new('hash')

Doggy.showInfo
