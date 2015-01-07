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
    @coordinate = params["co-ordinate"]
    if @name == "" 
      erb :try_again
    else
      erb :start 
    end
  end

  get '/action' do
    board = Board.new(Water)
    battleship = Ship.new(5)
    submarine = Ship.new(5)
    destroyer = Ship.new(5)
    @name = Player.new
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
