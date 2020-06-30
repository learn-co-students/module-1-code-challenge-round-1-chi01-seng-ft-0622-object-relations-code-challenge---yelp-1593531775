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

  def given_name
    first = Customer.all.select do |name|
      name.family_name == self
    end
    first
  end

  def family_name
    last = Customer.all.select do |name|
      name.family_name == self
    end
    last
  end

  def full_name
    "#{given_name} #{family_name}"
  end

end
