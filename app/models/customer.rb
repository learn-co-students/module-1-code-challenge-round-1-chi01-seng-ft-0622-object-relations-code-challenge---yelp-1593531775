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
    customer = Review.all.select do |review|
      review.customer == self
    end

    rest_list = customer.map do |customer|
      customer.restaurant
    end

    rest_list.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    customer = Review.all.select do |review|
      review.customer == self
    end
    customer.length
  end

  def self.find_by_name(name)
    @@all.select do |customer|
      customer.given_name == name
    end
  end
  
  
  def self.find_all_by_given_name(name)
    @@all.select do |customer|
      customer.given_name == name
    end
  end

end
