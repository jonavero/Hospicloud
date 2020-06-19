class Api::V1::BedsController < ApplicationController
  before_action :set_bed, only: [:show, :update, :destroy]

  # GET /beds
  # GET /beds.json
  def index
    @beds = Bed.all
  end

  # GET /beds/1
  # GET /beds/1.json
  def show
    @bed =Bed.find(params[:id])
    @usercreador= User.select(Arel.star).where(Bed.arel_table[:id].eq(@bed.id)).joins(
        User.arel_table.join(Bed.arel_table).on(Bed.arel_table[:user_id].eq(User.arel_table[:id])).join_sources)
  end

  # POST /beds
  # POST /beds.json
  def create
    @bed = Bed.new(bed_params)

    if @bed.save
      render :show, status: :created, location: @bed
    else
      render json: @bed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beds/1
  # PATCH/PUT /beds/1.json
  def update
    if @bed.update(bed_params)
      render :show, status: :ok, location: @bed
    else
      render json: @bed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beds/1
  # DELETE /beds/1.json
  def destroy
    @bed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bed
      @bed = Bed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bed_params
      params.require(:bed).permit(:idRoom, :name, :status, :user_id)
    end
end
