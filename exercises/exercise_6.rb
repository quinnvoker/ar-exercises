require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Quinn", last_name: "Branscombe", hourly_rate: 55)
@store1.employees.create(first_name: "Anu", last_name: "Hire", hourly_rate: 50)

@store2.employees.create(first_name: "Abraham", last_name: "Bigguy", hourly_rate: 60)
@store2.employees.create(first_name: "Bob", last_name: "Crud", hourly_rate: 55)
@store2.employees.create(first_name: "Charlie", last_name: "Day", hourly_rate: 50)