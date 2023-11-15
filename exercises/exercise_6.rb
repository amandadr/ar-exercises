require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Rubber", last_name: "Ducky", hourly_rate: 60)
@store1.employees.create(first_name: "Sponge", last_name: "Bob", hourly_rate: 40)
@store1.employees.create(first_name: "Patrick", last_name: "Star", hourly_rate: 40)
@store1.employees.create(first_name: "Squidward", last_name: "Tentacles", hourly_rate: 40)

@store2.employees.create(first_name: "Eugene", last_name: "Krabs", hourly_rate: 40)
@store2.employees.create(first_name: "Sandy", last_name: "Cheeks", hourly_rate: 40)
@store2.employees.create(first_name: "Pearl", last_name: "Krabs", hourly_rate: 40)
@store2.employees.create(first_name: "Gary", last_name: "Snail", hourly_rate: 40)