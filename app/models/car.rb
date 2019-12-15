class Car

  attr_reader :owner, :make, :model, :classification

  @@all = []

  # INITIALIZE #

  def initialize(owner, make, model, classification)
    @owner = owner
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  # INSTANCE METHODS #

  def mechanics # WORKS #
    Mechanic.all.select { |mechanic| mechanic.specialty == self.classification }
  end

  # CLASS METHODS #

  def self.all  # WORKS #
    @@all
  end

  def self.classifications  # WORKS #
    @@all.collect { |car| car.classification }
  end

  # END #

end
