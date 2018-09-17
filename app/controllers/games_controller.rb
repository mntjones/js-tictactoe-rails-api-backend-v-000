class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game.create(game_params)
    render json: @game
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
    params.permit(state: [])
  end

end
