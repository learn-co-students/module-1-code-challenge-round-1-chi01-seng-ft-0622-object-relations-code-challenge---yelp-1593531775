class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

# Customer#restaurants
  # Returns a unique array of all restaurants a customer has reviewed
  def restaurants
    Review.all.select{|review_info| review_info.customer == self}.map{|reviewers| reviewers.restaurant.name}.uniq
  end

# Customer#add_review(restaurant, rating)
  # given a restaurant object and a star rating (as an integer), 
  # creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

# Customer#num_reviews
  # Returns the total number of reviews that a customer has authored
  def num_reviews
    Review.all.select{|review_info| review_info.customer == self}.count
  end

# Customer.find_by_name(name)
  # given a string of a full name, 
  # returns the first customer whose full name matches
  def self.find_by_name(name)
    self.all.find {|customers| customers.full_name == name}
  end

# Customer.find_all_by_given_name(name)
  # given a string of a given name, 
  # returns an array containing all customers with that given name
  def self.find_all_by_given_name(name)
    self.all.select{|info| info.given_name == name}.map{|info| info.full_name}
  end
end

