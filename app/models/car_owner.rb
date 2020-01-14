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

  def cars
    Car.all.select { |car| car.car_owner == self }
  end

  def mechanics
    self.cars.map(&:mechanic)

    # this works too
    # self.cars.map { |car| car.mechanic }

    #[ {mechanic}, {mechanic}. {mechanic} ]
  end

  def self.average_owned
    sum = 0
    self.all.each do |owner|
      sum += owner.cars.length
    end
    # sum is also Car.all.length
    sum/self.all.length.to_f.round(2)
  end

end
