require 'pry'
require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      pirate = params["pirate"]
      @pirate = Pirate.new(pirate["name"], pirate["weight"], pirate["height"])

      ship1 = params["pirate"]["ships"][0]
      @ship1 = Ship.new(ship1["name"], ship1["type"], ship1["booty"])
      
      ship2 = params["pirate"]["ships"][1]
      @ship2 = Ship.new(ship2["name"], ship2["type"], ship2["booty"])

      erb :'pirates/show'
    end

  end
end
