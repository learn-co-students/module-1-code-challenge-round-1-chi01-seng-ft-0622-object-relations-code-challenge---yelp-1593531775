require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tenaysia = Customer.new("Tenaysia", "Fox")
charles = Customer.new("Charles", "Fox")
milton = Customer.new("Milton", "Fox")
rachel = Customer.new("Rachel", "Gatson")
samaria = Customer.new("Samaria", "McDonald")
doris = Customer.new("Doris", "Fox")
theresa = Customer.new("Theresa", "Taylor")
milton = Customer.new("Milton", "Foxx")



soulé = Restaurant.new("Soulé")
ca_phe_da = Restaurant.new("Ca Phe Da")

t_ca_phe_da_review = Review.new(tenaysia, ca_phe_da, 5.0)
soulé_review = Review.new(tenaysia, ca_phe_da, 4.0)
c_ca_phe_da_review = Review.new(charles, ca_phe_da, 3.0)

doris.add_review(soulé, 2.0)
tenaysia.add_review(soulé, 5.0)

Customer.find_by_name("Doris Fox")
Customer.find_all_by_given_name("Milton")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line