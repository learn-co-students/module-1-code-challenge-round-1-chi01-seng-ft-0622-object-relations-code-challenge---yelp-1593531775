require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

valentines = Restaurant.new("Valentine's")
shinto = Restaurant.new("Shinto")

haley = Customer.new("Haley", "Ferro")
haleyB = Customer.new("Haley", "Bee")
carlos = Customer.new("Carlos", "Gonzalez")

first = Review.new(haley, valentines, 4)
second = Review.new(carlos, valentines, 5)
third = Review.new(carlos, shinto, 3)
fourth = Review.new(haley, shinto, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line