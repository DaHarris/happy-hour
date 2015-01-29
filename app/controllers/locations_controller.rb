class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy, :rate]

  # GET /locations
  # GET /locations.json
  def home
    @locations = Location.all

    @days = [[0, 'sunday'], [1, 'monday'], [2, 'tuesday'], [3, 'wednesday'],
    [4, 'thursday'], [5, 'friday'], [6, 'saturday']]

    @time = Time.new
  end

  def index
    @locations = Location.all
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    @location = Location.new

    @days = [@sunday, @monday, @tuesday, @wednesday, @thursday, @friday, @saturday]
    @days.each do |this|
      this = false
    end

  end
  #
  # def rate_index
  #   @locations = Location.all
  # end

  def rate
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)
    @temp = Geocoder.search(@location.address)
    @location.latitude = @temp[0].latitude
    @location.longitude = @temp[0].longitude

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(rate_params)
        temp = @location.hcounter
        temp += 1
        @location.hcounter = temp
      end
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:name, :address, :longitude, :latitude, :gmaps, :hstart, :hend, :hmenu, :hrating, :number, :days, :sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :hrating, :hcounter)
    end

    def rate_params
      params.require(:location).permit(:hrating)
    end
end
