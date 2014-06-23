class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new

    if @restaurant.save
      flash[:notice] = "Success!"
      redirect_to '/'
    else
      flash.now[:notice] = "That ain't right!"
      render :new
    end

  end

end
