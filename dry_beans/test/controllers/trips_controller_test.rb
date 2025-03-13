require "test_helper"

class TripsControllerTest < ActionDispatch::IntegrationTest
  test "should create a trip" do
    route = routes(:one)
    post trips_url, params: { trip: {
      route_id: route.id,
      departure_time: "2021-01-01",
      arrival_time: "2021-01-01",
    }}
    assert_response :created
  end
end
