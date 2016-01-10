class BookingsController < ApplicationController
  
  def index
  end

  def new
    @booking = Booking.new
  end

  def create 
    booking = Booking.create(booking_params)
    redirect_to users_path
  end

  def destroy
    booking = Booking.find(params[:id])
    booking.destroy
    redirect_to(users_path)
  end



  private

  def booking_params
    params.require(:booking).permit(:user_id, :timeslot_id)
  end


end
