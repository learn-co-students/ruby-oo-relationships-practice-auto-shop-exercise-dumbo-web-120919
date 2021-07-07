class Mechanic

  attr_reader :name, :specialty
  @@all = []
  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end
  # list of all mechanics
  def self.all
    @@all
  end
  # Get a list of all cars that a mechanic services
  def cars
    Car.all.select{|car_instance| car_instance.mechanic == self}
  end
  # Get a list of all the car owners that go to a specific mechanic
  def owners
    self.cars.map{|car_instance| car_instance.owner}.uniq
  end
end
