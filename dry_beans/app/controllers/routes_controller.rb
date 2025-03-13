class RoutesController < ApplicationController
  
  def create
    route = Route.new(route_params)
    if route.save
      render json: route, status: :created
    else
      render json: { errors: route.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  def show
    route = Route.includes(trips: :deliveries).find(params[:id])
    render json: route.as_json(include: { trips: { include: :deliveries } })
  end

  private

  def route_params
    params.require(:route).permit(:name, :description)
  end
end
