class Car
  attr_accessor :mileage
  @mileage = 0

  def increment_mileage(miles)
    @mileage += miles
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage
