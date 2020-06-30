class Customer
  attr_accessor :given_name, :family_name

  @@all = [] 

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end  

  def full_name
    "#{given_name} #{family_name}"
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end  

  def restaurants
    Review.all.select do |my_reviews|
      my_reviews.customer == given_name
    end
  end 

  def num_reviews
    stuff = Review.all.select do |all_mine|
      all_mine.customer == self.given_name
    end
    stuff.size        
  end
  
  def self.find_by_name(name)
    Review.all.find do |my_name|
      my_name.customer == name
    end
  end 
  
  def self.find_all_by_given_name(name)
    Review.all.select do |my_name|
      my_name.customer == name
    end
  end  
end
