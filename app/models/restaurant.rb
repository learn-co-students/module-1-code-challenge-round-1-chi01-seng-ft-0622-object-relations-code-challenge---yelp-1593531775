class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name
    name = self.all.select do |place|
      name.restaurant == self
    end
  end

end
