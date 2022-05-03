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
                      name: 'paul',
                      email: 'agent1wqwqwq@gmail.com'

                    },

                    {
                      name: 'Philip',
                      email: 'agent2asdfdsa@gmail.com'

                    },

                    {
                      name: 'John',
                      email: 'rasadacdagent3@gmail.com'

                    },

                    {
                      name: 'henri',
                      email: 'waretirediopaagent4@gmail.com'

                    }

                  ])

Project.create([
                 {
                   title: 'E-commerce1',
                   startDate: '2022-05-15',
                   deadLineDate: '2022-05-20',
                   budget: 22_000,
                

                 },

                 {
                   title: 'E-commerce1',
                   startDate: '2022-05-15',
                   deadLineDate: '2022-05-20',
                   budget: 22_000,
                 },

                 {
                   title: 'E-commerce2',
                   startDate: '2022-05-16',
                   deadLineDate: '2022-05-21',
                   budget: 25_000,
                 },

                 {
                   title: 'E-commerce3',
                   startDate: '2022-05-18',
                   deadLineDate: '2022-05-27',
                   budget: 28_000,
                  

                 },

                 {
                   title: 'E-commerce3',
                   startDate: '2022-05-18',
                   deadLineDate: '2022-05-27',
                   budget: 28_000,
                 

                 },

                 {
                   title: 'E-commerce3',
                   startDate: '2022-05-18',
                   deadLineDate: '2022-05-27',
                   budget: 28_000,
                   

                 },

                 {
                   title: 'E-commerce4',
                   startDate: '2022-05-18',
                   deadLineDate: '2022-05-27',
                   budget: 28_000,
                  

                 }

               ])

 Vendor.create([
                {
                  project_id: 1,
                  programmer_id: 1
              },
                  {
                    project_id: 1,
                    programmer_id: 1},

                    {
                      project_id: 1,
                      programmer_id: 2},
                    
                      {
                        project_id: 1,
                        programmer_id: 3}

                  
                  ])
                               
