class AlgorithmController < ApplicationController
  def index
    @algorithm = Algorithm.new
  end
end
