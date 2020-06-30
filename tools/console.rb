require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


bob = Customer.new("Bob", "Smith")
mary = Customer.new("Mary", "Smith")
joe = Customer.new("Joe", "Smith")

md = Restaurant.new("McD")
wendy = Restaurant.new("Wendy")
burger = Restaurant.new("BurgerKing")

one = Review.new("Bob", "McD", 5)
two = Review.new("Bob", "Wendy", 7)
three = Review.new("Mary Smith", "McD", 10)
four = Review.new("Mary", "BurgerKing", 3)
five = Review.new("Joe", "McD", 8)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line