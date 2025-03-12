class DeliveriesController < ApplicationController
  def create
    delivery = Delivery.new(delivery_params)
    if delivery.save
      render json: delivery, status: :created
    else
      render json: { errors: delivery.errors.full_messages }, status: :unprocessable_entity
  end

  private

  def delivery_params
    params.require(:delivery).permit(:trip_id, :delivery_type, :recipient, :address, :status)
  end
end
