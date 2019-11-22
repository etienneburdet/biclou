class BikesController < ApplicationController
  before_action :set_bike, only: %i[update destroy]
  skip_before_action :authenticate_user!, only: :search

  def index
    @bikes = policy_scope(Bike).order(created_at: :desc)
    @bike = Bike.new
  end

  def search
    @bikes = Bike.all
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path
  end

  def update
    old_status = @bike.available
    @bike.update_column(:available, !old_status)
    authorize @bike

    respond_to do |format|
      format.html { redirect_to bikes_path }
      format.js { render 'bikes/update_availability.js.erb'}
    end
  end

  def create
    @bikes = policy_scope(Bike).order(created_at: :desc)
    @bike = Bike.new(bike_params)
    @bike.user = current_user

    authorize @bike
    if @bike.save
      redirect_to bikes_path
    else
      render :index
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
