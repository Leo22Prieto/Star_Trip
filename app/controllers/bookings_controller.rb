class BookingsController < ApplicationController
  before_action :authenticate_user!
  def new
    @user = current.user
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new(booking_params)
  end

  def create
    @user = current.user
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new(booking_params)
    @booking.user_id = @user
    @booking.trip_id = @trip
    if @booking.save
      flash.alert = "Congratulations! You have booked a trip to #{@trip.destination}. "
      redirect_to root_path
    else
      render :new
    end
  end
end
