class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show
  end

  def edit
  end

  def new
    @car = Car.new
  end

  def update
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @car.destroy
    redirect_to car_path
  end

  private
  def car_params
    params.require(:car).permit(:brand, :model, :year, :price, :description, :available, :photo, :address, :city, :latitude, :longitude, :review)
  end

  def set_car
    @car = car.find(params[:id])
  end
end
