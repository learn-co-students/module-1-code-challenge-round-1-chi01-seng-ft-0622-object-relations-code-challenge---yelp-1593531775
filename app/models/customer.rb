class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end


  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
      @@all
  end

  def restaurants
    Review.all.select do |reviews|
    reviews.customer == self
    end
  end

  def add_review(restaurant, rating)
        Review.new(self, restaurant, rating)
  end

  def num_reviews
      variable = Review.all.select do |reviews|
        reviews.customer == self
      end
      variable.length
  end

    def self.find_by_name(name)
        @@all.find do |customers|
          customers.full_name == full_name
        end

    end

    def self.find_all_by_given_name(name)
          @@all.select do |customers|
            customers.given_name == given_name
          end
    end




end
