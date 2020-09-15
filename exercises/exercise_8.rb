require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 8"
puts "----------"

new_employee = @store1.employees.create(first_name: "Impus", last_name: "Mimpus", hourly_rate: 60, password: "mimpus1")
new_employee = @store1.employees.create(first_name: "Jimbus", last_name: "Crimbus", hourly_rate: 60)

puts Employee.find(7).inspect
puts Employee.find(8).inspect