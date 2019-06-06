class Ship

  @@all =[]

attr_accessor :name, :type, :booty

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
