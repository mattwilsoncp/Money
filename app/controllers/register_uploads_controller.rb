class RegisterUploadsController < ApplicationController
  before_action :set_register_upload, only: [:show, :edit, :update, :destroy]

  # GET /register_uploads
  # GET /register_uploads.json
  def index
    @register_uploads = RegisterUpload.all
  end

  # GET /register_uploads/1
  # GET /register_uploads/1.json
  def show
  end

  # GET /register_uploads/new
  def new
    @register_upload = RegisterUpload.new
  end

  # GET /register_uploads/1/edit
  def edit
  end

  # POST /register_uploads
  # POST /register_uploads.json
  def create
    @register_upload = RegisterUpload.new(register_upload_params)

    respond_to do |format|
      if @register_upload.save
        format.html { redirect_to @register_upload, notice: 'Register upload was successfully created.' }
        format.json { render :show, status: :created, location: @register_upload }
      else
        format.html { render :new }
        format.json { render json: @register_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /register_uploads/1
  # PATCH/PUT /register_uploads/1.json
  def update
    respond_to do |format|
      if @register_upload.update(register_upload_params)
        format.html { redirect_to @register_upload, notice: 'Register upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @register_upload }
      else
        format.html { render :edit }
        format.json { render json: @register_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /register_uploads/1
  # DELETE /register_uploads/1.json
  def destroy
    @register_upload.destroy
    respond_to do |format|
      format.html { redirect_to register_uploads_url, notice: 'Register upload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register_upload
      @register_upload = RegisterUpload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_upload_params
      params.require(:register_upload).permit(:register_id, :filename, :external_file)
    end
end
