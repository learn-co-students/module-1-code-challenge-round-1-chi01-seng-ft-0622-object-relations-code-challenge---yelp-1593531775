class Review
  attr_accessor :customer, :resturant, :content
  @@all = []

  def initialize(resturant, customer, content)
    @resturant = resturant
    @customer = customer 
    @content = content
    @@all << self 
  end

  def self.all 
    @@all  
  end 

  def customer 
    Customer.all.collect do |customer|
        review.restaurant
    end
  end 

  def restaurant
    Restaurant.all.collect do |restaurant|
        reviews.restaurant
    end 
  end

end


