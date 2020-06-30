class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    result = self.review_matches
    result = result.map {|review| review.restaurant}
    result.uniq! || result
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def review_matches
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    result = self.review_matches
    result.size
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    self.all.select {|customer| customer.given_name == name}
  end
end