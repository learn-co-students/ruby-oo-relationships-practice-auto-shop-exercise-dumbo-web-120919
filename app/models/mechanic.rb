class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def which_cars
    Car.all.select{|car| car.classification == self.specialty}
  end

  def which_car_owners
    which_cars.map{|car| car.owner.name}
  end

  def self.all
    @@all
  end
end
