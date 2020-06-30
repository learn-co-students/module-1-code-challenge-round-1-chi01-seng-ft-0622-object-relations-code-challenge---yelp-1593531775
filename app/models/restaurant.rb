class Restaurant
  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

  def customers
    Review.all.select do |reviews|
      reviews.customer == self
    end

  end

  def reviews
  Review.all.map do |x|
    x.review
  end
end

def customers
  self.reviews.map do |x|
    x.customer
  end
end

  


  def average_star_rating
      ratings.sum / ratings.size
      end
      

end
