class ReviewsController < ApplicationController
before_action :find_restaurant, only: [:create, :new]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(strong_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render(:new) # render the new.html.erb
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    @restaurant = @review.restaurant
    redirect_to restaurant_path(@restaurant.id)
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def strong_params
    params.require(:review).permit(:content, :rating)
  end
end
