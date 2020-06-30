require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

harry = Customer.new("Harry", "Potter")
ron = Customer.new("Ron", "Weasley")
luna = Customer.new("Luna", "Lovegood")
ginny = Customer.new("Ginny", "Weasley")
hermione = Customer.new("Hermione", "Granger")

smackdab = Restaurant.new("Smackdab")
tacobell = Restaurant.new("Taco Bell")
mcdonalds = Restaurant.new("McDonalds")
burgerking = Restaurant.new("Burger King")

rating1 = Review.new("Harry", "Smackdab", 10)
rating2 = Review.new("Ron", "Taco Bell", 5)
rating3 = Review.new("Luna", "McDonalds", 3)
rating4 = Review.new("Ginny", "Smackdab", 9)
rating5 = Review.new("Hermione", "Burger King", 7)
rating6 = Review.new("Harry", "Burger King", 5)
rating7 = Review.new("Ron", "Smackdab", 8)
rating8 = Review.new("Harry", "McDonalds", 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line