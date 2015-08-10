class WineInfoController < ApplicationController
  def index
    @wines = Wine.all
  end
end
