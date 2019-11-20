class BikesController < ApplicationController
  before_action :set_bike, only: %i[update destroy]
  after_action :verify_authorized, except: :search, unless: :skip_pundit?


  def index
    @bikes = policy_scope(Bike).order(created_at: :desc)
  end

  def search
    @search_bike = Bike.all
    # authorize(Bike.first)
   # @bikes = Bike.where(name: @search_bike.name)
    # @bikes = policy_scope(Bike.where(name: @search_bike.name))
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
    @bike.save
    redirect_to bikes_path
  end

  def new
    @bike = Bike.new
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :description, :price_per_hour, :available, :photo)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
