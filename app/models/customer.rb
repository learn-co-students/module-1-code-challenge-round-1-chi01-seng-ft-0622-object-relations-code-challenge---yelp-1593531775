class Customer

  @@all = []

  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    Review.all.select { |review| review.customer == self }.count
  end

  def self.find_by_name(name)
    Customer.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    Customer.all.select do |customer|
      customer.given_name == name
    end
  end

  def self.all
    @@all
  end

end
