
class Animal
  def initialize(species)
    @species = species
  end

  def intro
    puts "I am from the #{@species} family"
  end
end

class Dog < Animal
  def initialize(name)
    super('Dog')
    @name = name
  end

  def hello
    puts "woo! my name is #{@name}"
  end
end

tom = Dog.new('Tom')

tom.hello
tom.intro
