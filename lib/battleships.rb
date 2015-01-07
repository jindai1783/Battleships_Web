require 'sinatra'

class BattleShips < Sinatra::Base
  
  get '/' do
    erb :index
  end

  get '/new' do
    erb :name
  end

  get '/start' do
    @name = params[:name]
    @coordinate = params[:start]
    if @name == "" 
      erb :try_again
    else
      erb :start 
    end
  end

  get '/try_again' do
    erb :try_again
  end

  # get '/start' do
  #   @coordinate = params[:start]
  # end

  # start the server if ruby file executed directly
  # run! if app_file == $0
end
