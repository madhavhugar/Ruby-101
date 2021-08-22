
class Dog
  def initialize(name)
    @name = name
  end

  def talk
    puts "woo! my name is #{@name}"
  end
end

tom = Dog.new('Tom')
sam = Dog.new 'Sam'

tom.talk
sam.talk
