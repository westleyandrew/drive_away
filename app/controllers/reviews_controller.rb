class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @car = Car.find(params[:car_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @car = Car.find(params[:car_id])
    @review.car = @car
    authorize @review
    if @review.save
      respond_to do |format|
        format.html { redirect_to restaurant_path(@restaurant) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'restaurants/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
