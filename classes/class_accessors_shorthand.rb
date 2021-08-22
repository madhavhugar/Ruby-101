class Home
  attr_reader :name, :city, :year_built # only get accessors
  attr_writer :name # only write accessors
  attr_accessor :renovated_on # read and write accessors

  def initialize(name, city, year_built)
    @name = name
    @city = city
    @year_built = year_built
    @renovated_on = year_built
  end
end

myHome = Home.new("villa", "berlin", 2000)
myHome.name = 'new name'
myHome.renovated_on = 2021
# myHome.city = "potsdam"         # <= access error

puts 'name: ' << myHome.name << ' city: ' << myHome.city << ' year_built: ' << myHome.year_built.to_s << ' last_renovated_on: ' << myHome.renovated_on.to_s



