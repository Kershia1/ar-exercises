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
### Exercise 7: Validations for both models

# 1. Add validations to two models to enforce the following business rules:
class Store < ActiveRecord::Base
  # - Stores must always have a name that is a minimum of 3 characters
  validates :name, length: { minimum: 3}
  # - Stores have an annual_revenue that is a number (integer) that must be 0 or more
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

class Employee < ActiveRecord::Base
  # - Employees must always have a first name present
  validates :first_name, presence: true
  # - Employees must always have a last name present
  validates :last_name, presence: true
  # - Employees have a hourly_rate that is a number (integer) between 40 and 200
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  # - Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
  validates :store_id, presence: true

  # - BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods) - **don't** use a `Validator` class)
end

# 2. Ask the user for a store name (store it in a variable)
puts "Enter your stores name"
store_name = gets.chomp
# 3. Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
store = Store.create(name: store_name)
# 4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
if store.save
  puts "Store saved"
else
  puts "We experienced the following errors:"
   store.errors.full_messages.each do |message|
  puts message
  end
end

# output was in CLI Enter your stores name
# ruby
# We experienced the following errors:
# Annual revenue is not a number