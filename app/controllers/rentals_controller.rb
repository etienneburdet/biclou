class RentalsController < ApplicationController
  before_action set_bike, only: :create

  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.bike = @bike
    @rental.save
    redirect_to rental_path(@rental)
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end
end
