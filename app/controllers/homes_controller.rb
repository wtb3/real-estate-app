class HomesController < ApplicationController
  def index
    @homes = Home.all
  end

  def show
    @home = Home.find(params[:id])
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    coordinates = Geocoder.coordinates(@home.address)
    @home.latitude = coordinates[0]
    @home.longitude = coordinates[1]

    if @home.save
      redirect_to @home, notice: "Home listing was successfully created."
    else
      render :new
    end
  end

  private

  def home_params
    params.require(:home).permit(:description, :year_built, :square_feet, :bedrooms, :bathrooms, :availability, :address, :price)
  end
end
