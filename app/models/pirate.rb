class Pirate

  attr_accessor :name, :weight, :height

  def initialize(name, weight, height)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@all << self
  end
end
