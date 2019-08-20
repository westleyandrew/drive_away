class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = policy_scope(Car)
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
    redirect_to cars_path
    authorize @car
  end

  private

  def car_params
    params.require(:car).permit(:title, :brand, :model, :year, :price, :description, :available, :photo, :address, :city, :user_id)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
