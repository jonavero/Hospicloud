require 'test_helper'

class MedicinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medicine = medicines(:one)
  end

  test "should get index" do
    get medicines_url, as: :json
    assert_response :success
  end

  test "should create medicine" do
    assert_difference('Medicine.count') do
      post medicines_url, params: { medicine: { description: @medicine.description, status: @medicine.status, userId: @medicine.userId } }, as: :json
    end

    assert_response 201
  end

  test "should show medicine" do
    get medicine_url(@medicine), as: :json
    assert_response :success
  end

  test "should update medicine" do
    patch medicine_url(@medicine), params: { medicine: { description: @medicine.description, status: @medicine.status, userId: @medicine.userId } }, as: :json
    assert_response 200
  end

  test "should destroy medicine" do
    assert_difference('Medicine.count', -1) do
      delete medicine_url(@medicine), as: :json
    end

    assert_response 204
  end
end
