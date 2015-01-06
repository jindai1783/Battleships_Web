require 'sinatra'

class BattleShips < Sinatra::Base
  
  get '/' do
    erb :index
  end

  get '/new' do
    erb :name
  end

  get '/confirm' do
    @name = params[:name]
    erb :confirm
  end

  # start the server if ruby file executed directly
  # run! if app_file == $0
end
