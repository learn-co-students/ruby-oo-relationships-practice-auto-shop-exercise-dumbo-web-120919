class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self 
  end

  def self.all 
    @@all 
  end

  def all_cars
    Car.all.select do |car|
      car.owner == self 
    end
  end

  def all_mechanics
    mechanics = self.all_cars.map do |car|
      car.mechanic
    end
    mechanics.uniq 
  end

  def self.average_cars
    owners = Car.all.map do |car|
      car.owner 
    end
    Car.all.length / owners.uniq.length
  end

end

