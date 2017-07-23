class RegisterEntriesController < ApplicationController
  before_action :set_register_entry, only: [:show, :edit, :update, :destroy]

  # GET /register_entries
  # GET /register_entries.json
  def index
    @register_entries = RegisterEntry.all
  end

  # GET /register_entries/1
  # GET /register_entries/1.json
  def show
  end

  # GET /register_entries/new
  def new
    @register_entry = RegisterEntry.new
    @register_entry.entry_date = Date.today
  end

  # GET /register_entries/1/edit
  def edit
  end

  # POST /register_entries
  # POST /register_entries.json
  def create
    @register_entry = RegisterEntry.new(register_entry_params)

    respond_to do |format|
      if @register_entry.save
        format.html { redirect_to @register_entry, notice: 'Register entry was successfully created.' }
        format.json { render :show, status: :created, location: @register_entry }
      else
        format.html { render :new }
        format.json { render json: @register_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /register_entries/1
  # PATCH/PUT /register_entries/1.json
  def update
    respond_to do |format|
      if @register_entry.update(register_entry_params)
        format.html { redirect_to @register_entry, notice: 'Register entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @register_entry }
      else
        format.html { render :edit }
        format.json { render json: @register_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /register_entries/1
  # DELETE /register_entries/1.json
  def destroy
    @register_entry.destroy
    respond_to do |format|
      format.html { redirect_to register_entries_url, notice: 'Register entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register_entry
      @register_entry = RegisterEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_entry_params
      params.require(:register_entry).permit(:register_id, :entry_date, :confirmation_number, :description, :category_id, :deposit, :withdrawal)
    end
end
