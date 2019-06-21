class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
    #game.genre_category
  end

  def edit
    @game = Game.find(params[:id])
  end

  def create
    @game = game.create(game_params)
    redirect_to game_path(@game)
  end

  def update
    @game = game.find(params[:id])
    @game.update(game_params)
    redirect_to game_path(@game)
  end
  
  private

  def game_params
    params.require(:game).permit(:title, :rating)
  end
end
