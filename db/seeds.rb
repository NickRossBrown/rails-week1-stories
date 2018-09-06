# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

stories_list = [
  [ "Oak", "Quercus" ],
  [ "Pine", "Pinus" ],
  [ "Sycamore", "Platanus" ],
  [ "Alder", "Alnus" ],
  [ "Birch", "Betula"],
  [ "Cherry", "Prunus"]
]

stories_list.each do |c, l|
  Story.create( title: c, description: l )
end


users_list = [
  [ "NIck", "male" ],
  [ "Ross", "male"],
  [ "Brown", "male" ],
  [ "Annie", "female"],
  [ "ANDY", "female"],
  [ "handee", "male"]
]

users_list.each do |thingONE, thingTWO|
  User.create( name:thingONE, gender:thingTWO)
end
