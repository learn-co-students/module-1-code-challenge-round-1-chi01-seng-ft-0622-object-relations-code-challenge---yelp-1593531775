class Review
    attr_accessor :rating
    attr_reader :customer, :restaurant
    @@all = []
    
    # Review#customer
        # returns the customer object for that review
        # Once a review is created, should not be able to change the customer
    # Review#restaurant
        # returns the restaurant object for that given review
        # Once a review is created, should not be able to change the restaurant
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
