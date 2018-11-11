require 'test_helper'

class AgusControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get agus_name_url
    assert_response :success
  end

  test "should get age" do
    get agus_age_url
    assert_response :success
  end

end
