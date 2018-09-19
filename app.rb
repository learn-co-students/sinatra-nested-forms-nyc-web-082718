require './environment'
require "pry"

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

  get '/' do
    erb :root
  end

  get '/new' do
    erb :'pirates/new'
  end

  post '/pirates' do
    @pirate = Pirate.new(params)
    @ship1 = Ship.new(params['pirate']['ships'][0])
    @ship2 = Ship.new(params['pirate']['ships'][1])

    # binding.pry
    # might be important
    # params['pirate']['ships'][0]['name']
    # params['pirate']['ships'][0]['type']
    # params['pirate']['ships'][0]['booty']
    # params['pirate']['name']
    # params['pirate']['height']
    # params['pirate']['weight']
    erb :'pirates/show'
  end



  end
end
