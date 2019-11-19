class BikesController < ApplicationController
  #def rent(rental_parameters = {})
  #Rental.new(:start_date, :end_date, :bike_id)
  def index
    @bikes = Bike.all
  end

  def destroy
    @bike = Bike.find(params[:bike])
    @bike.destroy
    redirect_to bikes_path
  end

  def update
    @bike = Bike.find(bike_params)
    @bike.update(bike_params)
    redirect_to bikes_path
  end

  def create
    @bike = Bike.new(task_params)
    @bike.save
    redirect_to bikes_path
  end

  def new
    @bike = Bike.new
  end

end

  private

    def bike_params
      params.require(:bike).permit(:name, :description, :price_per_hour, :available)
    end
