require "test_helper"

class DeliveriesControllerTest < ActionDispatch::IntegrationTest
  test "should create a delivery" do
    trip = trips(:one)
    post deliveries_url, params: { delivery: { 
      trip_id: trip.id,
      delivery_type: "Entrega",
      recipient: "Juan Pérez",
      address: "Av. Siempre Viva 742",
      status: "Pendiente"
    }}
    assert_response :created
  end
end
