class Mechanic

  attr_reader :name, :specialty

  @@all = []

  # INITIALIZE #

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

  # INSTANCE METHODS #

  def cars  # WORKS #
    Car.all.select { |car| car.classification == self.specialty }
  end 

  def car_owners  # WORKS #
    cars.collect { |car| car.owner }
  end

  def car_owner_names # WORKS #
    car_owners.collect { |owner| owner.name }
  end

  # CLASS METHODS #

  def self.all  # WORKS #
    @@all
  end 

  # END #

end
