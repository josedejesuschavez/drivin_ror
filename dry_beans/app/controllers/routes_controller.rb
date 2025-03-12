class RoutesController < ApplicationController
  def show
    route = Route.includes(trips: :deliveries).find(params[:id])
    render json: route.as_json(include: { trips: { include: :deliveries } })
  end
end
