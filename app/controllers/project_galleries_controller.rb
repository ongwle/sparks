class ProjectGalleriesController < ApplicationController
  before_action :set_project_gallery, only: [:show, :edit, :update, :destroy]

  # GET /project_galleries
  # GET /project_galleries.json
  def index
    @project_galleries = ProjectGallery.all
  end

  # GET /project_galleries/1
  # GET /project_galleries/1.json
  def show
  end

  # GET /project_galleries/new
  def new
    @project_gallery = ProjectGallery.new
  end

  # GET /project_galleries/1/edit
  def edit
  end

  # POST /project_galleries
  # POST /project_galleries.json
  def create
    @project_gallery = ProjectGallery.new(project_gallery_params)

    respond_to do |format|
      if @project_gallery.save
        format.html { redirect_to @project_gallery, notice: 'Project gallery was successfully created.' }
        format.json { render :show, status: :created, location: @project_gallery }
      else
        format.html { render :new }
        format.json { render json: @project_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_galleries/1
  # PATCH/PUT /project_galleries/1.json
  def update
    respond_to do |format|
      if @project_gallery.update(project_gallery_params)
        format.html { redirect_to @project_gallery, notice: 'Project gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_gallery }
      else
        format.html { render :edit }
        format.json { render json: @project_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_galleries/1
  # DELETE /project_galleries/1.json
  def destroy
    @project_gallery.destroy
    respond_to do |format|
      format.html { redirect_to project_galleries_url, notice: 'Project gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_gallery
      @project_gallery = ProjectGallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_gallery_params
      params.require(:project_gallery).permit(:ProjectImageUrl, :ProjectId)
    end
end
