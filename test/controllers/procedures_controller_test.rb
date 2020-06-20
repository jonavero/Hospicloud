require 'test_helper'

class ProceduresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @procedure = procedures(:one)
  end

  test "should get index" do
    get procedures_url, as: :json
    assert_response :success
  end

  test "should create procedure" do
    assert_difference('Procedure.count') do
      post procedures_url, params: { procedure: { description: @procedure.description, idEntry: @procedure.idEntry } }, as: :json
    end

    assert_response 201
  end

  test "should show procedure" do
    get procedure_url(@procedure), as: :json
    assert_response :success
  end

  test "should update procedure" do
    patch procedure_url(@procedure), params: { procedure: { description: @procedure.description, idEntry: @procedure.idEntry } }, as: :json
    assert_response 200
  end

  test "should destroy procedure" do
    assert_difference('Procedure.count', -1) do
      delete procedure_url(@procedure), as: :json
    end

    assert_response 204
  end
end
