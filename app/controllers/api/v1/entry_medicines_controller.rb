class Api::V1::EntryMedicinesController < ApplicationController
  before_action :set_entry_medicine, only: [:show, :update, :destroy]

  # GET /entry_medicines
  # GET /entry_medicines.json
  def index
    @entry_medicines = EntryMedicine.all
  end

  # GET /entry_medicines/1
  # GET /entry_medicines/1.json
  def show
  end

  # POST /entry_medicines
  # POST /entry_medicines.json
  def create
    @entry_medicine = EntryMedicine.new(entry_medicine_params)

    if @entry_medicine.save
      render :show, status: :created, location: @entry_medicine
    else
      render json: @entry_medicine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entry_medicines/1
  # PATCH/PUT /entry_medicines/1.json
  def update
    if @entry_medicine.update(entry_medicine_params)
      render :show, status: :ok, location: @entry_medicine
    else
      render json: @entry_medicine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entry_medicines/1
  # DELETE /entry_medicines/1.json
  def destroy
    @entry_medicine.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_medicine
      @entry_medicine = EntryMedicine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry_medicine_params
      params.require(:entry_medicine).permit(:idMedicine, :idEntry, :amount)
    end
end
