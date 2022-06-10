class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(user_id: params[:user_id], trip_id: params[:trip_id]) if params[:trip_id].present?
    redirect_to trips_path, notice: "Congratulations! You have booked a trip to booking. " if @booking.save
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path(@booking)
  end
end
