class Car

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  def initialize(input_option)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def ring_bell
    puts "Ring ring!"
  end
end

class Automobile < Car
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

car_1 = Car.new(
              speed: "60mph",
              direction: "NW"
              )
car_2 = Car.new(
              speed: "100mph",
              direction: "SW")

car_1.honk_horn