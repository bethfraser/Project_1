class BookingsController < ApplicationController
  
  def index
  end

  def new
    @booking = Booking.new
  end

  def create 
    @booking = Booking.new(booking_params)
    
    respond_to do |format|
      if @booking.save
        format.html { redirect_to users_path, notice: 'Added to your schedule!' }
        # format.json { render :show, status: :created, location: @recipe }
      else
        format.html { redirect_to :back, notice: @booking.errors.full_messages.join(", ") }
        # format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
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
