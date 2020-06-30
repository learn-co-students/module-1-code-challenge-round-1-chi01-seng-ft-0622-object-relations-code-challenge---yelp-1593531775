class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}" #given = first name family = last name
  end

  def self.all
    @@all
  end 

  def self.find_by_name(name)
    name_array = name.split("")
    Customer.all.find do |person|
      person.given_name == name_array[0] && person.family_name == name_array[1]
    end 
  end

  def self.find_all_by_given_name(name)
    Customer.all.select do |person|
      person.given_name
    end 
  end 

  def add_review(restaurant, rating)
    Review.new(restaurant, self, content)
  end 


end
