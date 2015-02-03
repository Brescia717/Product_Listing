# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: 'T-Shirts' }, { name: 'Hoodies' },
 [ name: 'Stickers' ]])

products = Product.create([{ name: 'Gannon Hoodie', price: 25.00, category_id: 2, description: "It's badass."},
  { name: "Link's Tunic", price: 12.00, category_id: 1, description: "Garb of the Hero of Time"},
  { name: "Link Macbook Cover", price: 17.00, category_id: 3, description: "It's better than an apple..."}])
