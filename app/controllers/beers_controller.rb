class BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.create(beer_params)
    @beer.save
    redirect_to beers_path
  end


  private
    def beer_params
      params.require(:beer).permit(:name, :style, :abv, :description, :brewery_id, :account_id)
    end
end
