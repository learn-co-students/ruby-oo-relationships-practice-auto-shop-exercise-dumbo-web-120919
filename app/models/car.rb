class Car

  attr_reader :make, :model, :classification, :owner, :mechanic
  @@all = []
  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end
  # Get a list of all cars
  def self.all
    @@all
  end
  # Get a list of all car classifications
  def self.all_classifications
    self.all.map(&:classification).uniq
  end
  # Get a list of mechanics that have an expertise that matches the car classification
  def mechanics_with_classification
    Mechanic.all.select{|mechanic_instance| mechanic_instance.specialty == self.classification}
  end

end