class Ship
  @@all = []
  attr_reader :name, :type, :booty

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
  end

  def self.all
    @@all
  end

  def self.clear
    all.each do |ship|
      ship.destroy
    end
  end
end
