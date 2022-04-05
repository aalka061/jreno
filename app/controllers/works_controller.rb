class WorksController < ApplicationController
  before_action :set_work, only: %i[ show edit update destroy ]
  # before_action :set_services

  # GET /works or /works.json
  def index
    @works = Work.all
    if params[:service_id].present?
      @service = Service.find params[:service_id]
      @works = @service.works
    end

  end

  # GET /works/1 or /works/1.json
  def show
    @images = @work.images
  end

  # GET /works/new
  def new
    @work = Work.new
  end

  # GET /works/1/edit
  def edit
  end

  # POST /works or /works.json
  def create
    @work = Work.new(work_params)
    if work_params[:service_id]
      @service = Service.find work_params[:service_id]
    end
    respond_to do |format|
      if @work.save
        if @service
          format.html { redirect_to service_works_path(@service), notice: "Work was successfully created." }
        else
          format.html { redirect_to work_url(@work), notice: "Work was successfully created." }
        end
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /works/1 or /works/1.json
  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to work_url(@work), notice: "Work was successfully updated." }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /works/1 or /works/1.json
  def destroy
    @work.destroy

    respond_to do |format|
      format.html { redirect_to works_url, notice: "Work was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_work
    @work = Work.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def work_params
    params.require(:work).permit(
      :title,
      :main_image_url,
      :image_1_url,
      :image_2_url,
      :image_3_url,
      :image_4_url,
      :image_5_url,
      :image_6_url,
      :description,
      :service_id
    )
  end
end
