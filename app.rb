require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      params["pirate"]["ships"].each do |ship_data|
        Ship.new(ship_data["name"], ship_data["type"], ship_data["booty"])
      end

      @pirate = Pirate.new(params["name"], params["height"], params["weight"])

      @ships = Ship.all

      erb :'pirates/show'
    end
  end
end
  
  
#     get '/' do
#       erb :new
#     end
    
#     post '/show' do
#       @pirate = Pirate.new(params[:pirate])
#       params[:pirate][:ships].each do |details|
#         Ship.new(details)
#       end
#     @ships = Ship.all
#     erb :show
#     end
#   end
# end
 
  #   post '/pirates' do
  #     @pirate = params[:pirate]
  #     @ships = params[:ship]
  #     erb :display 
  #   end
  # end