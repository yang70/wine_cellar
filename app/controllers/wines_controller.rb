class WinesController < ApplicationController

  def index
    @wines = Wine.all
  end

  def show
    @wines = Wine.find(params[:id])
  end
end
