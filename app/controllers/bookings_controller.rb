class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :destroy]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
    @car = Car.find(params[:car_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to car_path(@car)
    else
      redirect_back(fallback_location: car_path(@car))
    end
    authorize @booking
  end

  def destroy
    @car = @booking.car
    @booking.destroy
    redirect_to car_path(@car)
    authorize @booking
  end

  private

  def booking_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:booking).permit(:start_time, :end_time, :user_id, :car_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
