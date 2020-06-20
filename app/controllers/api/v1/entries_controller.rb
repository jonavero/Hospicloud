class Api::V1::EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :update, :destroy]

  # GET /entries
  # GET /entries.json
  def index
    @entries = Entry.all
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
    @entry = Entry.find(params[:id])
    @usercreador= User.select(Arel.star).where(Entry.arel_table[:id].eq(@entry.id)).joins(
        User.arel_table.join(Entry.arel_table).on(Entry.arel_table[:user_id].eq(User.arel_table[:id])).join_sources)
  end

  # POST /entries
  # POST /entries.json
  def create
    @entry = Entry.new(entry_params)
    @patient = Patient.select(Arel.star).where("id = ?","#{params[:idPatient]}")

    if @patient.status !='I'

    if @entry.save
      render :show, status: :created, location: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
    else

      render json: @entry.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    if @entry.update(entry_params)
      render :show, status: :ok, location: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry_params
      params.require(:entry).permit(:idPatient, :idRoom, :idDoctor, :diagnosis, :referral, :tutorName, :relationship, :telephone,:status, :user_id)
    end
end
