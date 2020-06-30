require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

becky = Customer.new("becky", "johnson")
miles = Customer.new("miles", "morkly")
gabe = Customer.new("gabe", "jameson")
larry = Customer.new("larry", "smith")
emily = Customer.new("emily", "rabilis")
gabe2 = Customer.new("gabe", "andersplat")

wendys = Restaurant.new("wendys")
mcdonalds = Restaurant.new("mcdonalds")
subway = Restaurant.new("subway")
soupspot = Restaurant.new("soup spot")
chilis = Restaurant.new("chilis")

rev1 = Review.new(becky, wendys, 5.5)
rev2 = Review.new(miles, subway, 6.0)
rev3 = Review.new(miles, wendys, 8.0)
rev4 = Review.new(emily, chilis, 2.5)
rev5 = Review.new(miles, subway, 2.2)

larry.add_review(soupspot, 7.7)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line