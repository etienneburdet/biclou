class BikesController < ApplicationController
  before_action :set_bike, only: [:update, :destroy]

  def index
    @bikes = Bike.all
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path
  end

  def update
    @bike.update(bike_params)
    redirect_to bikes_path
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.save
    redirect_to bikes_path
  end

  def new
    @bike = Bike.new
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :description, :price_per_hour, :available)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end

end
