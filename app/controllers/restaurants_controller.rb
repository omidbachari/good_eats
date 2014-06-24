class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.all

  end
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      flash[:notice] = "Success!"
      redirect_to '/'
    else
      flash.now[:notice] = "That ain't right!"
      render :new
    end

  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :description, :category)
  end
end
