class Restaurant

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    # my_reviews = self.reviews
    # my_reviews.select.uniq { |review| review.customer }
    self.reviews.select.uniq { |review| review.customer }
  end

  def average_star_rating
    # my_reviews = self.reviews
    self.reviews.sum { |review| review.rating } / self.reviews.count
  end

end
