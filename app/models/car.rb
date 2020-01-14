class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    # map!
    # ["", "", ""]
    self.all.map { |car_inst| car_inst.classification }
  end

  def expert_mechanics
    Mechanic.all.select do |instance|
      instance.specialty == self.classification 
    end
  end

end
