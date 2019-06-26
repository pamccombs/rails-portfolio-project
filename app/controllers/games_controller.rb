class GamesController < ApplicationController
  def index
    @games = Game.all
    @genres = Genre.all
  end

  def new
    @game = Game.new
    @genre = Genre.new
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.create(game_params)
    @genre = Genre.create(genre_params)
    redirect_to game_path(@game)
  end

  def update
    @game = Game.find(params[:id])
    @genre.update(genre_params)
    @game.update(game_params)
    redirect_to game_path(@game)
  end
  
  private

  def game_params
    params.require(:game).permit(:user_id, :title, :rating)
  end

  def genre_params
    params.require(:genre).permit(:user_id, :game_id, :category)
  end
  
end
