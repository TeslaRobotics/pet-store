# README

# Independent tables

rails g model Owner name:string birthday:date
rails g model Service description:text price:float
rails db:migrate

# Dependent tables

rails g model Pet name:string description:text age:integer owner:references
rails g model Ticket service:references pet:references
rails db:migrate

# Add welcome page

rails generate controller Welcome index

# Add data to models

#first entries

IRB
Owner.create(name: 'mr. Robot', birthday: DateTime.new(1993,10,29))
Pet.create(name: 'Flipper', description: 'Big black dog', age: 3)
Service.create(description: 'Nice massage', price: 30.0)
Ticket.create(service:1, pet:1)
