require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#first entries

Owner.create(name: 'mr. Robot', birthday: DateTime.new(1993,10,29))
Pet.create(name: 'Flipper', description: 'Big black dog', age: 3, owner: Owner.first)
Service.create(description: 'Nice massage', price: 30.0)

Ticket.create(service: Service.first, pet: Pet.first)


100.times do {
  dog_name = Faker::Creature::Dog.name


}

