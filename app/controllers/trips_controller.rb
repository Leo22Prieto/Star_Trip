class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_trip, only: %i[show edit update destroy]
  def index
    @trips = Trip.all
  end

  def new
    @company = Company.find(params[:company_id])
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @company = Company.find(params[:company_id])
    @trip.company = @company
    if @trip.save
      redirect_to trip_path(@trip), notice: 'Trip was successfully created'
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
    @review = Review.new
    @reviews = Review.all
  end

  def edit; end

  def update
    if @trip.update(trip_params)
      redirect_to @trip, notice: 'Trip was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @trip.destroy
    redirect_to trips_url, notice: 'Trip was successfully deleted'
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:destination, :arrival_date, :departure_date, :number_of_passengers, :description, :price, :url_image)
  end
end
