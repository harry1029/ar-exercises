require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each {|x| puts "Name: #{x.name}, Annual Revenue: #{x.annual_revenue}, Men's Apparel: #{x.mens_apparel}"}

@womens_stores_low_rev = Store.where(womens_apparel: true).where("annual_revenue < 1000000")

@womens_stores_low_rev.each {|x| puts "Name: #{x.name}, Annual Revenue: #{x.annual_revenue}, Women's Apparel: #{x.womens_apparel}"}