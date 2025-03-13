class TripsController < ApplicationController
  def create
    trip = Trip.new(trip_params)
    if trip.save
      render json: trip, status: :created
    else
      render json: { errors: trip.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:route_id, :departure_time, :arrival_time)
  end
end
