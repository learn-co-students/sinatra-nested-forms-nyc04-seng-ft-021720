require './environment'

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
      
       name = params[:pirate][:name]
       weight = params[:pirate][:weight]
       height = params[:pirate][:height]
       @pirate = Pirate.new(name, weight, height)
      
       params[:pirate][:ships].each do |ships|
         Ship.new(ships[:name], ships[:type], ships[:booty])
       end

       @ships = Ship.all

       
      

      erb :'pirates/show'
    end






  end
end
