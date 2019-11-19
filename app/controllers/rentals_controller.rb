class RentalsController < ApplicationController
  def index
    @rentals = Rentals.all
  end

  def new
    @bike = Bike.find(params[:bike_id])
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @bike = Bike.find(params[:bike_id])
    @rental.bike = @bike
    @rental.save
    redirect_to rental_path(@rental)
  end

  private

  def rental_params
    params.require(:resntal).permit(:start_date, :end_date)
  end
end
