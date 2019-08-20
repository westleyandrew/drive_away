class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @car = Car.find(params[:car_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @car = Car.find(params[:car_id])
    @review.car = @car
    if @review.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
