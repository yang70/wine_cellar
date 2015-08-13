class WinesController < ApplicationController
  before_action :require_user, only: [:new, :edit, :create, :update, :destroy]
  before_action :require_admin, only: [:new, :edit, :create, :update, :destroy]

  def index
    @wines = Wine.all
  end

  def show
    @wines = Wine.find(params[:id])
  end

  def new
    @wines = Wine.new
  end

  def edit
    @wines = Wine.find(params[:id])
  end

  def create
    @wines = Wine.new(wines_params)

    if @wines.save
      redirect_to @wines, notice: 'Wine successfully created.'
    else
      render 'new'
    end
  end

  def update
    @wines = Wine.find(params[:id])

    if @wines.update(wines_params)
      redirect_to @wines
    else
      render 'edit'
    end
  end

  def destroy
    @wines = Wine.find(params[:id])
    @wines.destroy

    redirect_to wines_path
  end

  private
    def wines_params
      params.require(:wines).permit(:wine_pic, :name, :variety, :year, :winery, :quantity, :country, :region, :notes)
    end
end
