class UsersController < EventsController
  

  before_action :authenticate_user!

  def index
    @event = Event.find(params[:event_id])
    @user_bookings = current_user.bookings.all.flatten
   
    
      @bookings = @user_bookings.select {|booking| Timeslot.find(booking.timeslot_id).act.event == @event}
    
    

    require 'date'

    date_from  = @event.start_date
    date_to    = @event.end_date
    @date_range = date_from..date_to

    @days = @date_range.map(&:mday)

  end

  def show
    @event = Event.find(params[:event_id])
    @user = current_user
  end

end
