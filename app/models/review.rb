class Review

    attr_reader :customer, :restaurant, :rating
    @@all = []


    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self

    end

    def self.all
        #returns all of the reviews
        @@all

    end

    def customer_restaurant(cust)
        @customer.select do |cust|
            cust.customer == customer
        end  

        # returns the customer object for that review

    end

    def restaurant

    end


  
end