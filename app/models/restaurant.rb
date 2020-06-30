class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

# Restaurant#reviews
  # returns an array of all reviews for that restaurant
  def reviews
    Review.all.select{|review_info| review_info.restaurant == self}
  end
# Restaurant#customers
  # Returns a unique list of all customers who have reviewed a particular restaurant.
  def customers
    self.reviews.map{|reviewers| reviewers.customer.full_name}.uniq
  end

# Restaurant#average_star_rating
  # returns the average star rating for a restaurant based on its reviews
  # Reminder: you can calculate the average by adding up all the ratings and 
  # dividing by the number of ratings
  def average_star_rating
    (self.reviews.map{|info| info.rating}.sum)/self.reviews.count
  end
end

