require_relative '../config/environment.rb'
# car owner -< cars >- mechanic 

def reload
  load 'config/environment.rb'
end

c1 = CarOwner.new("Ted")
c2 = CarOwner.new("Dan")
c3 = CarOwner.new("Steven")

m1 = Mechanic.new("Andy", "antique")
m2 = Mechanic.new("Carlos", "exotic")
m3 = Mechanic.new("Bob", "clunker")

car1 = Car.new("Toyota", "Camry", "clunker", c1, m3)
car2 = Car.new("Chevy", "Camaro", "antique", c1, m1)
car3 = Car.new("Ford", "Fusion", "clunker", c1, m3)
car4 = Car.new("Ford", "Mustang", "exotic", c2, m2)
car5 = Car.new("Fancy", "old car", "antique", c3, m1)
car6 = Car.new("Ugly", "crappy car", "clunker", c2, m3)

binding.pry
