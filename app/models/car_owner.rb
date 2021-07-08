class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.all.select {|car_instance| car_instance.car_owner == self}
  end

  def mechanics
    cars.map {|car_instance| car_instance.mechanic}
  end

  # Get the average amount of cars owned for all owners
  def self.average_num_of_cars
    @@all
  end

  def self.all
    @@all
  end
end