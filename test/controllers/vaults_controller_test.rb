require 'test_helper'

class VaultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vaults_index_url
    assert_response :success
  end

  test "should get show" do
    get vaults_show_url
    assert_response :success
  end

end
