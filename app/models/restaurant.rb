class Restaurant

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    customers = []
    Review.all.map do |review|
      if review.restaurant == self
        customers << review.customer
      end
    end
    customers
  end

  def average_star_rating
    ratings = []
    Review.all.select do |review|
      review.restaurant == self
      ratings << review.rating
    end
    ratings.inject(0.0) { |sum, el| sum + el } / ratings.size
  end

  def self.all
    @@all
  end

end
