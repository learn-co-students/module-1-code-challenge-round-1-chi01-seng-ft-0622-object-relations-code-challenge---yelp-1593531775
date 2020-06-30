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
    Review.all.select do |my_reviews|
      my_reviews.restaurant == name
    end
  end
  
  def customers
    people = Review.all.select do |my_reviews|
      my_reviews.restaurant == name
    end
    people.map do |peps|
      peps.customer
    end  
  end
  
  def average_star_rating
    num = self.reviews.map do |rate|
      rate.rating
    end
    num.sum / num.size
  end  
end
