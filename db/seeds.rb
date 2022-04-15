# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do
#   Programmer.create({
#                       name: Faker::Book.title,
#                       email: Faker::Lorem.sentence
#                     })
# end


Programmer.create([
    {
        name: "paul",
        email: "agent1@gmail.com"
       
       

    },

    {
        name: "Philip",
        email: "agent2@gmail.com"

    },

    {
        name: "John",
        email: "agent3@gmail.com"

    },

    {
       name: "henri",
        email: "agent4@gmail.com"

    }
  
])



Project.create([
    {
        title: "E-commerce1",
        startDate: "2022-04-15",
        deadLineDate:"2022-04-20",
        budget:22000,
        programmer_id:1
       
       

    },

    {
        title: "E-commerce1",
        startDate: "2022-04-15",
        deadLineDate: "2022-04-20",
        budget:22000,
        programmer_id:2
    },

    {
        title: "E-commerce2",
        startDate: "2022-04-16",
        deadLineDate: "2022-04-21",
        budget:25000,
        programmer_id:2
    },

    {
       title: "E-commerce3",
        startDate: "2022-04-18",
        deadLineDate:"2022-04-27",
        budget:28000,
        programmer_id:3

    },

    {
        title: "E-commerce3",
        startDate: "2022-04-18",
        deadLineDate:"2022-04-27",
        budget:28000,
        programmer_id:1

    },
    
     {
       title: "E-commerce3",
        startDate: "2022-04-18",
        deadLineDate:"2022-04-27",
        budget:28000,
        programmer_id:2

    },
   
    {
        title: "E-commerce4",
        startDate: "2022-04-18",
        deadLineDate:"2022-04-27",
        budget:28000,
        programmer_id:1

    }


  
])