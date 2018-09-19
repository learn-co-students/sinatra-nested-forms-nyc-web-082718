class Pirate
  @@all = []
  attr_reader :name, :weight, :height

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
  end

  def all
    @@all
  end
end
