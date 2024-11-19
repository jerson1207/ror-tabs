# db/seeds.rb

# Create categories related to dresses
dresses = Category.create(name: "Dresses")
casual_dresses = Category.create(name: "Casual Dresses")
evening_dresses = Category.create(name: "Evening Dresses")
wedding_dresses = Category.create(name: "Wedding Dresses")

# Create products related to dresses
dress1 = Product.create(name: "Summer Floral Dress", price: 49.99)
dress2 = Product.create(name: "Black Cocktail Dress", price: 79.99)
dress3 = Product.create(name: "Maxi Evening Dress", price: 129.99)
dress4 = Product.create(name: "Lace Wedding Dress", price: 249.99)
dress5 = Product.create(name: "Striped Casual Dress", price: 39.99)

# Associate products with categories
dresses.products << dress1
dresses.products << dress2
dresses.products << dress5

casual_dresses.products << dress1
casual_dresses.products << dress5

evening_dresses.products << dress2
evening_dresses.products << dress3

wedding_dresses.products << dress4

# Output a message to confirm data was seeded
puts "Categories and products related to dresses have been successfully seeded."
