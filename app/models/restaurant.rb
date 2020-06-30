class Restaurant

  attr_accessor :name, :reviews, :customer
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all
  end 

  def self.find_by_name(name)
    self.all.find do |name|
      self.name == self 
    end 
  end 

  def reviews
    Review.all.collect do |restaurant_review|
      restaurant_review.Restaurant == self 
    end 
  end 

  def customers
    Review.all.select do |customer|
      customers == self.customer
    end 
  end


end
