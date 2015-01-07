require 'sinatra'

class BattleShips < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  get '/new' do
    erb :name
  end

  post '/new' do
    if params[:user].empty?
      @error = "You didn't enter a name"
      erb :name
    else
      @user = params[:user]
      erb :start
    end

  end

  get '/start' do
    session[:ship_coord] = []
    erb :start 
  end

  post '/start' do
    if params[:coordinate].empty?
      @error_coord = "You didn't enter a co-ordinate"
      erb :start
    else
      @coordinate = params[:coordinate]
      session[:ship_coord] << @coordinate
      @ship_coord = session[:ship_coord]
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

  get '/position' do
    @coordinate = params[:start]
    erb :position2
  end  

  # start the server if ruby file executed directly
  # run! if app_file == $0
end
