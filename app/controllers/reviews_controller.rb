class ReviewsController < ApplicationController


def show
  @reviews = Review.all
end

def new
  @review = Review.new
  @restaurant = Restaurant.find(params[:restaurant_id])
end

def create

    @review = Review.new(review_params)

    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant

    if @review.save
      flash[:notice] = "Success"
      redirect_to restaurant_path(@restaurant)
    else
      flash.now[:notice] = "NO."
      render "restaurant/show"
    end
  end
  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
