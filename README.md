# README

# Independent tables

rails g model Owner name:string birthday:date
rails g model Service description:text price:float
rails g model Pet name:string description:text age:integer owner:references
rails db:migrate

# Dependent tables

rails g model Ticket service:references pet:references
rails db:migrate
