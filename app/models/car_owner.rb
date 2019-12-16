class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_car(make, model, classification)
    Car.new(make, model, classification, self)
  end

  def cars
    Car.all.select{|car| car.owner == self}
  end

  def self.avg_car_per_owner
    self.all.sum{|owner| owner.cars.length}.to_f / self.all.length
  end

  def self.all
    @@all
  end


end
