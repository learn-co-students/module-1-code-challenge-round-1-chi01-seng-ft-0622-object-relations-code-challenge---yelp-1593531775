class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    people = Review.all.select do |review|
      review.restaurant == self
    end
    people.map { |review| review.customer.given_name }.uniq
  end

  def average_star_rating
  end

end
