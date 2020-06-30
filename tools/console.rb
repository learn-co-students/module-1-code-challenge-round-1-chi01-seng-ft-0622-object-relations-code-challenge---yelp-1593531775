require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


customer1 = Customer.new("Jake", "Wazydrag")
customer2 = Customer.new("Maggie", "Etherington-Wazydrag")
customer3 = Customer.new("Bo", "Wazydrag")
customer4 = Customer.new("Matt", "Etherington")
customer5 = Customer.new("Laura", "Etherington")
customer6 = Customer.new("John", "Etherington")

restaurant1 = Restaurant.new("Portillos")
restaurant2 = Restaurant.new("Veranda")
restaurant3 = Restaurant.new("Pick_me_up_Cafe")
restaurant4 = Restaurant.new("Handlebar")
restaurant5 = Restaurant.new("Thai Lagoon")
restaurant6 = Restaurant.new("Ground Kontrol")

review1 = Review.new(customer1, restaurant1, 10)
review2 = Review.new(customer1, restaurant2, 10)
review3 = Review.new(customer2, restaurant3, 8)
review4 = Review.new(customer5, restaurant5, 7)
review5 = Review.new(customer5, restaurant6, 10)
review6 = Review.new(customer5, restaurant1, 10)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line