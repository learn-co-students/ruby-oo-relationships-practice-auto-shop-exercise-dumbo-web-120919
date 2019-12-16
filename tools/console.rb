require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# CarOwner.new(name)
co1 = CarOwner.new("Owner 1")
co2 = CarOwner.new("Owner 2")
co3 = CarOwner.new("Owner 3")
co4 = CarOwner.new("Owner 4")

# Mechanic.new(name, specialty)
m1 = Mechanic.new("Mechanic 1", "Compact")
m2 = Mechanic.new("Mechanic 2", "Van")
m3 = Mechanic.new("Mechanic 3", "Van")
m4 = Mechanic.new("Mechanic 4", "Truck")

# Car.new(make, model, classification, car_owner, mechanic)
c1 = Car.new("Toyota", "Camry", "Compact", co1, m1)
c2 = Car.new("Ford", "Transit", "Van", co2, m2)
c3 = Car.new("GMC", "Savana", "Van", co1, m2)
c4 = Car.new("Chevy", "Silverado", "Truck", co4, m4)

binding.pry
puts "vrooooom"
# CarOwner -< Car >- Mechanic