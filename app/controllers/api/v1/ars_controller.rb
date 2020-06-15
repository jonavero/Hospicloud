class Api::V1::ArsController < ApplicationController
  before_action :set_ar, only: [:show, :update, :destroy]

  # GET /ars
  # GET /ars.json
  def index
    @ars = Ars.all
  end

  # GET /ars/1
  # GET /ars/1.json
  def show
    @ar =Ars.find(params[:id])
    @usercreador= User.select(Arel.star).where(Ars.arel_table[:id].eq(@ar.id)).joins(
        User.arel_table.join(Ars.arel_table).on(Ars.arel_table[:user_id].eq(User.arel_table[:id])).join_sources)

  end

  # POST /ars
  # POST /ars.json
  def create
    @ar = Ars.new(ar_params)

    if @ar.save
      render :show, status: :created, location: @ar
    else
      render json: @ar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ars/1
  # PATCH/PUT /ars/1.json
  def update
    if @ar.update(ar_params)
      render :show, status: :ok, location: @ar
    else
      render json: @ar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ars/1
  # DELETE /ars/1.json
  def destroy
    @ar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar
      @ar = Ars.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ar_params
      params.require(:ars).permit(:name, :status, :user_id)
    end
end
