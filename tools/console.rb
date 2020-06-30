require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# losgallos = Restaurant.new("los gallos")
# elfaro = Restaurant.new("elfaro")
# vasoslokos = Restaurant.new("vasos lokos")

# josue = Customer.new("josue", "viramontes")
# daniel = Customer.new("daniel", "viramontes")
# peter = Customer.new("peter", "viramontes")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line