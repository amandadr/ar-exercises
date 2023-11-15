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
class Employee
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: {minimum: 40, maximum: 200}
end

class Store
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {minimum: 0}
  validate :must_carry_gender
  
  def must_carry_gender
    if !mens_apparel && !womens_apparel
      errors.add(:no_apparel, "need to sell men's or women's apparel")
    end
  end
end

puts "Please enter a store name"
store_name = gets.chomp

new_store = Store.create(name: store_name)

puts new_store.errors.full_messages