class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index

    @cars = policy_scope(Car)
    @cars = @cars.search_by_title_and_model(params[:search]) if params[:search].present?
    # @cars = Car.geocoded #returns flats with coordinates

    @markers = @cars.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { car: car }),
        image_url: helpers.asset_url('car.png')
      }
    end
  end

  def show
    authorize @car
  end

  def edit
    authorize @car
  end

  def new
    @car = Car.new
    authorize @car
  end

  def update
    @car.update(car_params)
    redirect_to car_path(@car)
    authorize @car
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
    authorize @car
  end

  def destroy
    @car.destroy
    redirect_to cars_path
    authorize @car
  end

  private

  def car_params
    params.require(:car).permit(:title, :brand, :model, :year, :price, :description, :available, :photo, :address, :user_id)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
