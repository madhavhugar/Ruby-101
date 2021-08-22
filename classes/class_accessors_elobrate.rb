class Car
  def initialize(name, type)
    @name = name
    @type = type
  end

  def name
    return @name
  end

  def type
    return @type
  end

  def name=(name)
    @name = name
  end

  def type=(type)
    @type = type
  end
end

class SelfDrivingCar < Car
  def initialize(name, version)
    super(name, 'SELF_DRIVING')
    @version = version
  end

  def version
    return @version
  end
end

polo = Car.new('polo', 'hatchback')

puts "#{polo.name} #{polo.type}"
polo.type = 'smallCar'

puts "#{polo.name} #{polo.type}"
