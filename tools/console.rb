require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bob = CarOwner.new("Bob")
phil = CarOwner.new("Phil")

bink = Mechanic.new("Bink", "clunker")
fink = Mechanic.new("Finkleroy", "luxury")


bobs_car = bob.new_car("ford", "pinto", "clunker")
phils_car = phil.new_car("honda", "fit", "luxury")
phils_bad_car = phil.new_car("toyota", "camry", "clunker")

binding.pry
"booga"