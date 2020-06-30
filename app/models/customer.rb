class Customer
  attr_reader :given_name, :family_name, :full_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @full_name = "#{given_name} #{family_name}"
    @@all << self
  end

  # def full_name
  #   "#{given_name} #{family_name}"
  # end

  def self.all
    @@all
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def my_reviews #this is a helper function. he is a good and nice friend
    Review.all.select { |review| review.customer == self }
  end

  def restaurants
    # my_reviews = Review.all.select { |review| review.customer == self }
    my_reviews.select.uniq { |review| review.restaurant }
  end

  def num_reviews
    #  Review.all.select.count { |review| review.customer == self }
    my_reviews.count
  end

  def self.find_by_name(full_name)
    Customer.all.detect { |customer| customer.full_name == full_name }
  end

  def self.find_all_by_given_name(name)
    Customer.all.select { |customer| customer.given_name == name }
  end




end
