require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

o1 = CarOwner.new("Tim")
o2 = CarOwner.new("Greg")
m1 = Mechanic.new("Jim", "domestic")
m2 = Mechanic.new("Oliver", "german")
c1 = Car.new("BMW", "M3", "german", o1, m2)
c2 = Car.new("Ford", "Mustang", "domestic", o2, m1)
c3 = Car.new("Dodge", "Neon", "domestic", o1, m1)
binding.pry
