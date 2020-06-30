require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sam = Customer.new("Samuel", "Montalvo")
gizelle = Customer.new("Gizelle", "Biorn")
wally = Customer.new("Samuel", "Walton")
derick = Customer.new("Derick", "Castillo")

lsa = Restaurant.new("Lone Star Attitude")
jackalope = Restaurant.new("Jackalope Cafe")
connies = Restaurant.new("Connie's Pizza")

lsa_review_g = Review.new(gizelle, lsa, 5)
jackalope_review = Review.new(sam, jackalope, 4)
jackalope_review_two = Review.new(gizelle, jackalope, 3)
lsa_review = Review.new(sam, lsa, 5)
lsa_review_bad = Review.new(wally, lsa, 2)
lsa_outsider = Review.new(derick, lsa, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line