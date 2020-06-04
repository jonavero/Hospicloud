require 'test_helper'

class BranchOfficesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @branch_office = branch_offices(:one)
  end

  test "should get index" do
    get branch_offices_url, as: :json
    assert_response :success
  end

  test "should create branch_office" do
    assert_difference('BranchOffice.count') do
      post branch_offices_url, params: { branch_office: { address: @branch_office.address, name: @branch_office.name, telephone: @branch_office.telephone } }, as: :json
    end

    assert_response 201
  end

  test "should show branch_office" do
    get branch_office_url(@branch_office), as: :json
    assert_response :success
  end

  test "should update branch_office" do
    patch branch_office_url(@branch_office), params: { branch_office: { address: @branch_office.address, name: @branch_office.name, telephone: @branch_office.telephone } }, as: :json
    assert_response 200
  end

  test "should destroy branch_office" do
    assert_difference('BranchOffice.count', -1) do
      delete branch_office_url(@branch_office), as: :json
    end

    assert_response 204
  end
end
