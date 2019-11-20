class RentalsController < ApplicationController
  before_action :set_bike, only: :create

  def index
    @rentals = policy_scope(Rental).order(created_at: :desc)
  end

  def new
    @rental = Rental.new
    authorize @rental
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.bike = @bike
    authorize @rental
    if @rental.save
      redirect_to rental_path(@rental)
    else
      render :new
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end
end
