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

  def restaurants
    spots = Review.all.select do |review|
      review.customer == self
    end
    spots.map { |review| review.restaurant.name }.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    ratings = Review.all.select do |review|
      review.customer == self
    end
    ratings.length
  end

  def self.find_by_name(firstname, secondname)
    self.all.find do |customer|
      customer.full_name == "#{firstname} #{secondname}"
    end
  end

  def self.find_by_given_name(firstname)
    self.all.select do |customer|
      customer.given_name == firstname
    end
  end

end
