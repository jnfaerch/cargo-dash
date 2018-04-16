require 'test_helper'

class ShipmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shipment_index_url
    assert_response :success
  end

end
