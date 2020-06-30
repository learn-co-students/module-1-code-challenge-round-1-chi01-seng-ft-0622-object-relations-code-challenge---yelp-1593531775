require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kathleen = Customer.new("Kathlen", "Brennan")
kat = Customer.new("Kathlen", "Brennan")
sarah = Customer.new("Sarah", "Brennan")
ryan = Customer.new("Ryan", "Leonard")
sam = Customer.new("Sam", "Brennan")

mcdonalds = Restaurant.new("Mcdonalds")
culvers = Restaurant.new("Culvers")
burgerking = Restaurant.new("Burger King")

rev1 = Review.new(sarah, mcdonalds, 4)
rev2 = Review.new(sam, burgerking, 5)
rev3 = Review.new(sam, culvers, 8)
rev4 = Review.new(kathleen, mcdonalds, 9)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line