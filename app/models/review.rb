class Review
  @@all = []

    attr_reader :name, :rating, :customer, :restaurant

  def initialize(customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating  

    @@all << self
  end

  def self.all
      @@all
  end


end