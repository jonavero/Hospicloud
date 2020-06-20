require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get entries_url, as: :json
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post entries_url, params: { entry: { address: @entry.address, brithday: @entry.brithday, civilState: @entry.civilState, diagnosis: @entry.diagnosis, gender: @entry.gender, idARS: @entry.idARS, idDoctor: @entry.idDoctor, idPatient: @entry.idPatient, idRoom: @entry.idRoom, identityCard: @entry.identityCard, lastname: @entry.lastname, numARS: @entry.numARS, phone: @entry.phone, referral: @entry.referral, status: @entry.status, telephone: @entry.telephone, thumbnail: @entry.thumbnail, tutorname: @entry.tutorname, userId: @entry.userId } }, as: :json
    end

    assert_response 201
  end

  test "should show entry" do
    get entry_url(@entry), as: :json
    assert_response :success
  end

  test "should update entry" do
    patch entry_url(@entry), params: { entry: { address: @entry.address, brithday: @entry.brithday, civilState: @entry.civilState, diagnosis: @entry.diagnosis, gender: @entry.gender, idARS: @entry.idARS, idDoctor: @entry.idDoctor, idPatient: @entry.idPatient, idRoom: @entry.idRoom, identityCard: @entry.identityCard, lastname: @entry.lastname, numARS: @entry.numARS, phone: @entry.phone, referral: @entry.referral, status: @entry.status, telephone: @entry.telephone, thumbnail: @entry.thumbnail, tutorname: @entry.tutorname, userId: @entry.userId } }, as: :json
    assert_response 200
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete entry_url(@entry), as: :json
    end

    assert_response 204
  end
end
