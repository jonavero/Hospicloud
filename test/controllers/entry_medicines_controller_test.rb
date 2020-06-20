require 'test_helper'

class EntryMedicinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry_medicine = entry_medicines(:one)
  end

  test "should get index" do
    get entry_medicines_url, as: :json
    assert_response :success
  end

  test "should create entry_medicine" do
    assert_difference('EntryMedicine.count') do
      post entry_medicines_url, params: { entry_medicine: { amount: @entry_medicine.amount, idEntry: @entry_medicine.idEntry, idMedicine: @entry_medicine.idMedicine } }, as: :json
    end

    assert_response 201
  end

  test "should show entry_medicine" do
    get entry_medicine_url(@entry_medicine), as: :json
    assert_response :success
  end

  test "should update entry_medicine" do
    patch entry_medicine_url(@entry_medicine), params: { entry_medicine: { amount: @entry_medicine.amount, idEntry: @entry_medicine.idEntry, idMedicine: @entry_medicine.idMedicine } }, as: :json
    assert_response 200
  end

  test "should destroy entry_medicine" do
    assert_difference('EntryMedicine.count', -1) do
      delete entry_medicine_url(@entry_medicine), as: :json
    end

    assert_response 204
  end
end
