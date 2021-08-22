module Bottle
  def open
    puts 'opening bottle'
  end

  def close
    puts 'closing bottle'
  end
end

class CokeBottle
  include Bottle

  def drink
    open
    puts 'drinking coke from bottle'
    close
  end
end

class SpriteBottle
  include Bottle

  def drink
    open
    puts 'drinking sprite from bottle'
    close
  end
end

cola = CokeBottle.new
sprite = SpriteBottle.new

cola.drink
sprite.drink
