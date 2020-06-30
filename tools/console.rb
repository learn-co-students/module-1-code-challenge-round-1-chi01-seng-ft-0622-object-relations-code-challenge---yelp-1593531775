require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

matt = Customer.new("Matt", "Guttman")
haley = Customer.new("Haley", "Ferro")
seth = Customer.new("Seth", "Starr")

mcdonalds = Restaurant.new("McDonalds")
arbys = Restaurant.new("Arbys")

matt_mcdonalds = Review.new(matt, mcdonalds, 10)
haley_mcdonalds = Review.new(haley, mcdonalds, 5)
seth_arbys = Review.new(seth, arbys, 7)


binding.pry

0 #leave this here to ensure binding.pry isn't the last line

puts "exit pry"
