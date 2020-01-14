# LOOKIN' FOR ADVENTURE - HEAD OUT ON THE HIGHWAY

Word has just come from the higher-ups, and you're in charge of building out a domain that keeps track of cars, their owners, and the mechanics that service them.  Each car has its own classification, like "antique", "exotic", or "clunker", and each mechanic has a specialization (these are the same as car classifications).  You don't want to take your sweet souped up '94 Camaro to some jerk that specializes in beamers right?

Each CarOwner may have a ton of cars, but these folks are fanatical about their maintenance, and only see one mechanic per car.

The basics have been built out for you, but you'll need to figure out the relationships and create most of the methods.  Hook it up!

## Deliverables

Here's what we need to be able to do.

## CarOwner
​
<!-- - `CarOwner.all`
- returns an array of car owner instances -->
<!-- - `CarOwner#cars`
- returns an array of all the cars that a specific owner has -->
<!-- - `CarOwner#mechanics`
- returns an array of all the mechanics that a specific owner goes to -->
<!-- - `CarOwner.average_owned`
- returns a float representing the average number of cars owned for all owners -->
​
## Car
​
<!-- - `Car.all`
- returns an array of all car instances -->
<!-- - `Car.classifications`
- returns an array of strings for all car classifications -->
<!-- - `Car#expert_mechanics`
- returns an array mechanic instances that have a specialty that matches the car classification -->


## Mechanic
​
<!-- - `Mechanic.all`
- returns an array of all mechanic instances -->
<!-- - `Mechanic#cars`
- returns an array of car instances that a mechanic services -->
<!-- - `Mechanic#car_owners`
- returns an array of car owners that go to a specific mechanic -->
<!-- - `Mechanic#car_owner_names`
- returns an array of names of all car owners who go to a specific mechanic -->
