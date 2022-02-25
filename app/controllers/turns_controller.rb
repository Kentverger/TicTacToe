class TurnsController < ApplicationController
  def create
    @turn = Turn.new(turn_params)

    respond_to do |format|
      if @turn.save
        res = @turn.as_json.merge winner: @turn.game.winner?
        format.json { render json: res, status: :created }
      else
        format.json { render json: @turn.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def turn_params
    params.require(:turn).permit(:game_id, :x, :y, :badge)
  end
end
