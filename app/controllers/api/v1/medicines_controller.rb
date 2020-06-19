class Api::V1::MedicinesController < ApplicationController
  before_action :set_medicine, only: [:show, :update, :destroy]

  # GET /medicines
  # GET /medicines.json
  def index
    @medicines = Medicine.all
  end

  # GET /medicines/1
  # GET /medicines/1.json
  def show
    @medicine = Medicine.find(params[:id])
    @usercreador= User.select(Arel.star).where(Medicine.arel_table[:id].eq(@medicine.id)).joins(
        User.arel_table.join(Medicine.arel_table).on(Medicine.arel_table[:user_id].eq(User.arel_table[:id])).join_sources)
  end

  # POST /medicines
  # POST /medicines.json
  def create
    @medicine = Medicine.new(medicine_params)

    if @medicine.save
      render :show, status: :created, location: @medicine
    else
      render json: @medicine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medicines/1
  # PATCH/PUT /medicines/1.json
  def update
    if @medicine.update(medicine_params)
      render :show, status: :ok, location: @medicine
    else
      render json: @medicine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medicines/1
  # DELETE /medicines/1.json
  def destroy
    @medicine.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicine
      @medicine = Medicine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medicine_params
      params.require(:medicine).permit(:description, :status, :user_id)
    end
end
