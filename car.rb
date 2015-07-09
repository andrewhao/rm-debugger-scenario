class Car
  attr_accessor :color

  def initialize(color)
    @color = color
  end
end

class CarDecorator < SimpleDelegator
  def color
    super + "!"
  end
end

c = Car.new("red")
cd = CarDecorator.new(c)

puts c.color
puts cd.color