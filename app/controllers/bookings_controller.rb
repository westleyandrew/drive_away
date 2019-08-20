class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @car = @booking.car
    @booking.destroy
    redirect_to car_path(@car)
  end

  private

  def booking_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:booking).permit(:booking_start_date, :booking_end_date, :user_id, :car_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
