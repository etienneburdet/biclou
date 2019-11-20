class BikesController < ApplicationController
  before_action :set_bike, only: %i[update destroy]

  def index
    @bikes = policy_scope(Bike).order(created_at: :desc)

  end

  def new
    @bike = Bike.new
    authorize @bike
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
    @bike.user = current_user

    authorize @bike
    if @bike.save
      redirect_to bikes_path
    else
      render :new
    end
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :description, :price_per_hour, :available, :photo)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
