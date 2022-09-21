class PicturesController < ApplicationController
  before_action :set_picture, only: %i[ show edit update destroy ]

  # GET /pictures or /pictures.json
  def index
    @pictures = Picture.where(nil)
    filtering_params.each do |k,v|
      @pictures = @pictures.public_send("filter_by_#{k}", v)
    end
    @type= filtering_params[:type]
    puts "********"
    puts @type

    respond_to do |format|
      format.js
      format.html
    end

  end

  # GET /pictures/1 or /pictures/1.json
  def show
  end

  # GET /pictures/new
  def new
    @picture = Picture.new
    @type = params[:type]
  end

  # GET /pictures/1/edit
  def edit
    @type = @picture.project_type

  end

  # POST /pictures or /pictures.json
  def create
    @picture = Picture.new(picture_params)

    respond_to do |format|
      if @picture.save
        @picture.main_image.attach(picture_params[:main_image])
        format.html { redirect_to picture_url(@picture), notice: "Picture was successfully created." }
        format.json { render :show, status: :created, location: @picture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pictures/1 or /pictures/1.json
  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to picture_url(@picture), notice: "Picture was successfully updated." }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1 or /pictures/1.json
  def destroy
    @picture.destroy

    respond_to do |format|
      format.html { redirect_to pictures_url, notice: "Picture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_picture
    @picture = Picture.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def picture_params
    params.require(:picture).permit(:title, :description, :url, :project_type, :main_image)
  end

  def filtering_params
    params.slice(:type)
  end
end
