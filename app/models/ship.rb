class Ship
  attr_accessor :name, :type, :booty

  @@ships = []
  def initialize(params)
    @name = params[:name]
    @booty = params[:booty]
    @type = params[:type]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end

end
