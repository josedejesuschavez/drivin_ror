require "test_helper"

class RoutesControllerTest < ActionDispatch::IntegrationTest
  test "should show route with trips and deliveries" do
    route = routes(:one)
    get route_url(route)
    assert_response :success
    assert_includes @response.body, route.name
  end
end
