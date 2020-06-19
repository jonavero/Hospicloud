require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url, as: :json
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { address: @patient.address, brithday: @patient.brithday, civilState: @patient.civilState, gender: @patient.gender, idARS: @patient.idARS, identityCard: @patient.identityCard, lastname: @patient.lastname, name: @patient.name, numARS: @patient.numARS, phone: @patient.phone, status: @patient.status, telephone: @patient.telephone, thumbnail: @patient.thumbnail, userId: @patient.userId } }, as: :json
    end

    assert_response 201
  end

  test "should show patient" do
    get patient_url(@patient), as: :json
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { address: @patient.address, brithday: @patient.brithday, civilState: @patient.civilState, gender: @patient.gender, idARS: @patient.idARS, identityCard: @patient.identityCard, lastname: @patient.lastname, name: @patient.name, numARS: @patient.numARS, phone: @patient.phone, status: @patient.status, telephone: @patient.telephone, thumbnail: @patient.thumbnail, userId: @patient.userId } }, as: :json
    assert_response 200
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient), as: :json
    end

    assert_response 204
  end
end
