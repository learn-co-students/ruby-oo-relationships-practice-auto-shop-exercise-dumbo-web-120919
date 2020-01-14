require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Jack")
co2 = CarOwner.new("Sally")
co3 = CarOwner.new("Mocha")

mech1 = Mechanic.new("Joe", "antique")
mech1 = Mechanic.new("Jane", "antique")
mech1 = Mechanic.new("Joey", "antique")
mech3 = Mechanic.new("Dee", "family")
mech2 = Mechanic.new("Betty", "modern")

car1 = Car.new("Derby", "Model X", "antique", co1, mech3)
car2 = Car.new("Musk", "Tesla", "modern", co2, mech1)
car3 = Car.new("SoccerMom", "3000", "family", co3, mech2)
car3 = Car.new("SoccerDad", "3000", "family", co3, mech2)

binding.pry
