class ReviewsController < ApplicationController
  def create
    @trip = Trip.find(params[:trip_id])
    @review = Review.new(review_params)
    @review.trip = @trip
    @review.user = current_user

    if @review.save
      redirect_to trip_path(@trip)
    else
      render "trips/show"
    end
  end

  def new
    @review = Review.new
  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
end
