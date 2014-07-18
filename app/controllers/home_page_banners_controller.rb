class HomePageBannersController < ApplicationController
  before_action :set_home_page_banner, only: [:show, :edit, :update, :destroy]

  # GET /home_page_banners
  # GET /home_page_banners.json
  def index
    @home_page_banners = HomePageBanner.all
  end

  # GET /home_page_banners/1
  # GET /home_page_banners/1.json
  def show
  end

  # GET /home_page_banners/new
  def new
    @home_page_banner = HomePageBanner.new
  end

  # GET /home_page_banners/1/edit
  def edit
  end

  # POST /home_page_banners
  # POST /home_page_banners.json
  def create
    @home_page_banner = HomePageBanner.new(home_page_banner_params)

    respond_to do |format|
      if @home_page_banner.save
        format.html { redirect_to @home_page_banner, notice: 'Home page banner was successfully created.' }
        format.json { render :show, status: :created, location: @home_page_banner }
      else
        format.html { render :new }
        format.json { render json: @home_page_banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_page_banners/1
  # PATCH/PUT /home_page_banners/1.json
  def update
    respond_to do |format|
      if @home_page_banner.update(home_page_banner_params)
        format.html { redirect_to @home_page_banner, notice: 'Home page banner was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_page_banner }
      else
        format.html { render :edit }
        format.json { render json: @home_page_banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_page_banners/1
  # DELETE /home_page_banners/1.json
  def destroy
    @home_page_banner.destroy
    respond_to do |format|
      format.html { redirect_to home_page_banners_url, notice: 'Home page banner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_page_banner
      @home_page_banner = HomePageBanner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_page_banner_params
      params.require(:banner).permit(:Sequence, :HomePageId, :BannerId)
    end
end
