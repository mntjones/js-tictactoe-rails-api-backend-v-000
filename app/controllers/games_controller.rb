class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @games
  end

  def new
    @game = Game.new()
  end

  def create
    @game = Game.new()
    @game.create(game_params)
  end

  def show
    @game = Game.find(id: params[:id])
  end

  def edit

  end

  def update
    @game = Game.find(id: params[:id])
  end

  private
  def game_params
    params.require(:game).permit(:state)
  end

end
