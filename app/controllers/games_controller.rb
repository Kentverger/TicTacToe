class GamesController < ApplicationController
  def create
    @game = Game.new

    respond_to do |format|
      if @game.save
        format.json { render json: @game, status: :created }
      else
        format.json { render json: @game, status: :unprocessable_entity }
      end
    end
  end

  def new
  end
end
