class Car
  attr_accessor :car_owner, :mechanic
  attr_reader :make, :model, :classification

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @car_owner = car_owner
    @mechanic = mechanic
    @classification = classification
    @@all << self
  end

  def self.car_classifications
    @@all.map {|car_instance| car_instance.classification}
  end

  def self.matching_mechanics(classification)
    @@all.select.map do |car_instance|
      if car_instance.classification == classification
        car_instance.mechanic
      end
    end
  end

  def self.all
    @@all
  end
end
