class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
  end

  def new
    
  end

  def create
    @game = Game.new()
    
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

  end
  
end
