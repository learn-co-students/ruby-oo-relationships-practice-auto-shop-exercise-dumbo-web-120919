require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

joe = CarOwner.new("Joe")
mark = CarOwner.new("Mark")
alice = CarOwner.new("Alice")
stephen = CarOwner.new("Stephen")
jackie = CarOwner.new("Jackie")

omar = Mechanic.new("Omar", "New Cars")
jon = Mechanic.new("Jon", "Trucks")
mike = Mechanic.new("Mike", "Old Cars")
jill = Mechanic.new("jill", "Sports Cars")
bill = Mechanic.new("Bill", "Teslas")

car1 = Car.new(joe, "Toyota", "Toyota Car", "New Cars")
car2 = Car.new(joe, "Ferarri", "Ferarri Car", "Sports Cars")
car3 = Car.new(mark, "Toyota", "Toyota Car", "New Cars")
car4 = Car.new(alice, "Tesla", "Tesla Car", "Teslas")
car5 = Car.new(alice, "Ford", "Model T", "Old Cars")
car6 = Car.new(alice, "Honda", "Honda Car", "New Cars")
car7 = Car.new(stephen, "Chevy", "Chevy Truck", "Trucks")
car8 = Car.new(jackie, "Tesla", "Cybertruck", "Teslas")

binding.pry
