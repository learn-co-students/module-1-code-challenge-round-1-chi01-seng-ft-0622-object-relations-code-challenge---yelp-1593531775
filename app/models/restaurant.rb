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
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    result = self.reviews.map {|review| review.customer}
    result.uniq! || result
  end

  def average_star_rating
      reviews = self.reviews
      numerators = reviews.inject(0) {|sum, review| sum += review.rating}
      denominator = reviews.size
      numerators.to_f / denominator.to_f
  end
end
