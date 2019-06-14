class Pirate

  @@all = []

  attr_accessor :name, :weight, :height

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end


end
