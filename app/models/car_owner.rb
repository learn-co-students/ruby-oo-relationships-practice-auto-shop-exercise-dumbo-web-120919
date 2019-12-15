class CarOwner

  attr_reader :name

  @@all = []

  # INITIALIZATION #

  def initialize(name)
    @name = name
    @@all << self
  end

  # INSTANCE METHODS #

  def cars  # WORKS #
    Car.all.select { |car| car.owner == self }
  end

  def mechanics # WORKS #
    types_owned = cars.collect { |car| car.classification }
    mechanics = []
    Mechanic.all.each do |mechanic|
      if types_owned.include?(mechanic.specialty)
        mechanics << mechanic
      end
    end
    mechanics
  end

  # CLASS METHODS #

  def self.all  # WORKS #
    @@all
  end

  def self.average_cars_owned # WORKS #
    average_cars_each = []
    @@all.each do |owner|
      average_cars_each << owner.cars.count
    end
    average_cars_total = ((average_cars_each.inject { |sum, n| sum += n }).to_f / (average_cars_each.count).to_f)
    average_cars_total
  end

  # END #

end
