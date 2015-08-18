class WineInfoController < ApplicationController
  def index
    @wines = Wine.all

    @rand_wine = Wine.all[rand(Wine.all.length)]
  end
end
