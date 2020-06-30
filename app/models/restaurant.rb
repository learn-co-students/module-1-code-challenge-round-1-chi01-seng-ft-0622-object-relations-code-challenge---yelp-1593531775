class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    restaurant = Review.all.select do |review|
      review.restaurant == self
    end

    list = restaurant.map do |rest|
      rest.customer
    end

    list.uniq
  end

  def average_star_rating
    list = Review.all.select do |review|
      review.restaurant == self
    end

    rating = list.map do |element|
      element.rating
    end

    rating.sum/rating.length.to_f
  end


end
