class Review
  
    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def rating
        Review.new(customer, restaurant)
    end

    def self.all
        @@all
    end

    def customer_review(customer)
        self.all.select do |name|
            name.customer
        end
    end
    
    def restaurant_review(restaraunt)
        self.all.select do |location|
            location.restaraunt
        end
    end

end