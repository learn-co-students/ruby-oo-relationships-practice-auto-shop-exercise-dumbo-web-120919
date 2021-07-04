class Car

  attr_reader :make, :model, :owner, :classification

  @@all = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner

    @@all << self
  end
  
  def which_mechanic
    Mechanic.all.select{|mechanic| mechanic.specialty == self.classification}
  end

  def self.all_classifications
    Mechanic.all.map{|mechanic| mechanic.specialty}.uniq
  end

  def self.all
    @@all
  end
end
