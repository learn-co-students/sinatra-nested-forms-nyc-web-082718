require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end
    # code other routes/actions here

    post '/pirates' do
      new_pirate = params[:pirate]
      new_ship_one = params[:pirate][:ships][0]
      new_ship_two = params[:pirate][:ships][1]
      @pirate = Pirate.new(new_pirate[:name], new_pirate[:weight], new_pirate[:height])
      @ship_one = Ship.new(new_ship_one[:name], new_ship_one[:type], new_ship_one[:booty])
      @ship_two = Ship.new(new_ship_two[:name], new_ship_two[:type], new_ship_two[:booty])
      erb :'pirates/show'
    end

  end
end
