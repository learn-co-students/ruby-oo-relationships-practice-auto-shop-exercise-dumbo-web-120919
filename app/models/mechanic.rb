class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def cars
    Car.all.select {|car_instance| car_instance.mechanic == self}
  end

  def car_owners
    Car.all.map {|car_instance| car_instance.car_owner if car_instance.mechanic == self}.compact
  end

  def car_owner_names
    car_owners.map {|car_owner| car_owner.name}.uniq.compact
  end

  def self.all
    @@all
  end
end
