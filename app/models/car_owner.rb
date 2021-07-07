class CarOwner

  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  # Get a list of all owners
  def self.all
    @@all
  end
  # Get a list of all the cars that a specific owner has
  def cars
    Car.all.select{|car_instance| car_instance.owner == self}
  end
  # Get a list of all the mechanics that a specific owner goes to
  def mechanics
    self.cars.map(&:mechanic).uniq
  end
  # Get the average amount of cars owned for all owners
  def self.average_amount
    self.all.sum{|owner_instance| owner_instance.cars.length}.to_f / self.all.length
  end
end