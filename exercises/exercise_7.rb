require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Name of store to add\n> "
store_name = gets.chomp
new_store = Store.create(name: store_name)

new_store.errors.messages.each do |error|
  puts ":#{error[0]}\n"
  error[1].each { |message| puts "  #{message}" }
end