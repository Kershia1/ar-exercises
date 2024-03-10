require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
### Exercise 1: Create 3 stores

# 1. Use Active Record's `create` class method multiple times to create 3 stores in the database:

# - Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# - Richmond (annual_revenue of 1260000 carries women's apparel only)
# - Gastown (annual_revenue of 190000 carries men's apparel only)

# note to self instead of 3 sep I can do one insert with each hash instead so from :

# stores = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

# stores = Stores.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )

# stores = Stores.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false )

# to an array of hashes, where each hash represents the attributes for one record. :

stores = Store.create([
  {name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true},

 { name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true },

 { name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false}])