class Api::V1::PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @patient = Patient.find(params[:id])
    @usercreador= User.select(Arel.star).where(Patient.arel_table[:id].eq(@patient.id)).joins(
        User.arel_table.join(Patient.arel_table).on(Patient.arel_table[:user_id].eq(User.arel_table[:id])).join_sources)
  end

  def patientcard
    @patient2 =Patient.find_by_identityCard(params[:identityCard])
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render :show, status: :created, location: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    if @patient.update(patient_params)
      render :show, status: :ok, location: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_params
      params.require(:patient).permit(:name, :lastname, :birthday, :gender, :identityCard, :address, :civilState, :thumbnail, :phone, :telephone, :idARS, :numARS, :status, :user_id)
    end
end
