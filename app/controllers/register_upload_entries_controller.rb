class RegisterUploadEntriesController < ApplicationController
  before_action :set_register_upload_entry, only: [:show, :edit, :update, :destroy]

  # GET /register_upload_entries
  # GET /register_upload_entries.json
  def index
    @register_upload_entries = RegisterUploadEntry.all
  end

  # GET /register_upload_entries/1
  # GET /register_upload_entries/1.json
  def show
  end

  # GET /register_upload_entries/new
  def new
    @register_upload_entry = RegisterUploadEntry.new
  end

  # GET /register_upload_entries/1/edit
  def edit
  end

  # POST /register_upload_entries
  # POST /register_upload_entries.json
  def create
    @register_upload_entry = RegisterUploadEntry.new(register_upload_entry_params)

    respond_to do |format|
      if @register_upload_entry.save
        format.html { redirect_to @register_upload_entry, notice: 'Register upload entry was successfully created.' }
        format.json { render :show, status: :created, location: @register_upload_entry }
      else
        format.html { render :new }
        format.json { render json: @register_upload_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /register_upload_entries/1
  # PATCH/PUT /register_upload_entries/1.json
  def update
    respond_to do |format|
      if @register_upload_entry.update(register_upload_entry_params)
        format.html { redirect_to @register_upload_entry, notice: 'Register upload entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @register_upload_entry }
      else
        format.html { render :edit }
        format.json { render json: @register_upload_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /register_upload_entries/1
  # DELETE /register_upload_entries/1.json
  def destroy
    @register_upload_entry.destroy
    respond_to do |format|
      format.html { redirect_to register_upload_entries_url, notice: 'Register upload entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register_upload_entry
      @register_upload_entry = RegisterUploadEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_upload_entry_params
      params.require(:register_upload_entry).permit(:register_upload_id, :entry_date, :description, :category_id, :withdrawal, :deposit, :register_id)
    end
end
