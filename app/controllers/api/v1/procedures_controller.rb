class Api::V1::ProceduresController < ApplicationController
  before_action :set_procedure, only: [:show, :update, :destroy]

  # GET /procedures
  # GET /procedures.json
  def index
    @procedures = Procedure.all
  end

  # GET /procedures/1
  # GET /procedures/1.json
  def show
  end

  # POST /procedures
  # POST /procedures.json
  def create
    @procedure = Procedure.new(procedure_params)

    if @procedure.save
      render :show, status: :created, location: @procedure
    else
      render json: @procedure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /procedures/1
  # PATCH/PUT /procedures/1.json
  def update
    if @procedure.update(procedure_params)
      render :show, status: :ok, location: @procedure
    else
      render json: @procedure.errors, status: :unprocessable_entity
    end
  end

  # DELETE /procedures/1
  # DELETE /procedures/1.json
  def destroy
    @procedure.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procedure
      @procedure = Procedure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def procedure_params
      params.require(:procedure).permit(:idEntry, :description)
    end
end
