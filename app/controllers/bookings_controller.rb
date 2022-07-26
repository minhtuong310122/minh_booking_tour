class BookingsController < ApplicationController
  def new
    @tour = Tour.find_by id: params[:tour_id]
    @booking = Booking.new
    2.times {@booking.buyers.build}
  end

  def create
    byebug
    @booking = Booking.new params_booking.merge(user_id: current_user.id, tour_id: params[:tour_id])

    if @booking.save
      redirect_to tour_booking_path(params[:tour_id], @booking)
    else
      @tour = Tour.find_by id: params[:tour_id]
      @booking.buyers.build
      render :new
    end
  end

  def show
    @booking = Booking.find_by id: params[:id]
    @tour = Tour.find_by id: params[:tour_id]
  end

  private

  def params_booking
    params.require(:booking).permit buyers_attributes: [:name, :phone, :date_of_birth, :passport]
  end
end
