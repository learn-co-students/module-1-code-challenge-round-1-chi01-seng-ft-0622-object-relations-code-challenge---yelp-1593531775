require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
l_dog = Customer.new("Larry", "Patton")
g_dog = Customer.new("Gary", "Marshall")
m_dog = Customer.new("Mary", "Smith")

wing = Restaurant.new("Wing-stop")
burger = Restaurant.new("BK Burgers")
fish = Restaurant.new("Poke Poke")

r1 = Review.new(l_dog, wing, 6)
r2 = Review.new(m_dog, burger, 10)
r3 = Review.new(g_dog, wing, 2)
r4 = Review.new(g_dog, fish, 2)
r5 = Review.new(m_dog, wing, 2)
r6 = Review.new(l_dog, fish, 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line