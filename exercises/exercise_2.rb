require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
### Exercise 2: Update the first store

# 1. Load the first store (with `id = 1`) from the database and assign it to an instance variable `@store1`.
# 2. Load the second store from the database and assign it to `@store2`.
# 3. Update the first store (`@store1`) instance in the database. (Change its name or something.)

store = Store.find_by(id: 1)
store.update(name: "@store1")

puts store.name #output => @store1

store = Store.find_by(id: 2)
store.update(name: "@store2")

puts store.name #output => @store2

# store = Store.find_by(id: 1)
# store.update(name: "Dept Store")

puts Store.name #output => Dept Store