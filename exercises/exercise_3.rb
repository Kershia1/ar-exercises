require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
### Exercise 3: Delete the third store

# 1. Load the third store (into `@store3`) as you did the other two before.
# 2. Using Active Record's `destroy` method, delete the store from the database.
# 3. Verify that the store has been deleted by again outputting (`puts`ing) the `count` (as you did in Exercise 1.)

store = Store.find_by(id: 3)
store.update(name: "@store3")

store.destroy

# puts store.count #output => `method_missing': undefined method `count' for #<Store id: 3, because I was calling on the instance and not the class

puts Store.count #output => SELECT COUNT(*) FROM "stores" => 2