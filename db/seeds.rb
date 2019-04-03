require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#first entries



services = ["Nice massage", "Shower", "Sterilization", "Vaccination"]
services.map! do |service| 
  {description: service, price: (rand(60.0) + 1)} 
end

Service.create(services)


#first entries
Owner.create(name: 'mr. Robot', birthday: DateTime.new(1993,10,29))
Pet.create(name: 'Flipper', description: 'Big black dog', age: 3, owner: Owner.first)
Ticket.create(service: Service.first, pet: Pet.first)

10.times do 
  owner = {
    name: Faker::Name.name,
    birthday: Faker::Date.birthday(10, 85)
  }

  temp_owner = Owner.create(owner)

  pet = {
    name: Faker::Creature::Dog.name,
    description: Faker::Books::Lovecraft.sentences[0],
    age: (rand(15) + 1),
    owner: temp_owner
  }
  
  
  temp_pet = Pet.create(pet) 

  rand(10).times do 
    temp_service = Service.limit(1).offset(rand(Service.count)).to_a[0]
    Ticket.create(service: temp_service, pet: temp_pet)
  end
end

