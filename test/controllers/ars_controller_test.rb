require 'test_helper'

class ArsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ar = ars(:one)
  end

  test "should get index" do
    get ars_url, as: :json
    assert_response :success
  end

  test "should create ar" do
    assert_difference('Ars.count') do
      post ars_url, params: { ar: { name: @ar.name, status: @ar.status, userId: @ar.userId } }, as: :json
    end

    assert_response 201
  end

  test "should show ar" do
    get ar_url(@ar), as: :json
    assert_response :success
  end

  test "should update ar" do
    patch ar_url(@ar), params: { ar: { name: @ar.name, status: @ar.status, userId: @ar.userId } }, as: :json
    assert_response 200
  end

  test "should destroy ar" do
    assert_difference('Ars.count', -1) do
      delete ar_url(@ar), as: :json
    end

    assert_response 204
  end
end
