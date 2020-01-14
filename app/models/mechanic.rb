class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  # [ {car}, {car}, {car} ]
  Car.all.select { |car_inst| car_inst.mechanic == self }
end

def car_owners
  # [ {car_owner}, {car_owner}, {car_owner} ]
  # Car.all.select { |car_inst| true or false }
  # self.cars.map { |car_inst| car_inst.car_owner }

  self.cars.map { |car_inst| car_inst.car_owner }
end

# mech2.car_owner_names
def car_owner_names
  self.car_owners.map { |car_owner_inst| car_owner_inst.name }
end


end
