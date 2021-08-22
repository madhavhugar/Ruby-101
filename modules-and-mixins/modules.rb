module Helpers
  PI = 3.14

  def add(a, b)
    a + b
  end

  def sub(a, b)
    a - b
  end

  def Helpers.add(a, b)
    a + b + 100
  end
end

# puts add(2, 2).to_s             # <= undefined method `add`
puts Helpers.add(2, 2).to_s
puts Helpers::PI

include Helpers
puts add(2, 2).to_s # no error after we included the module
