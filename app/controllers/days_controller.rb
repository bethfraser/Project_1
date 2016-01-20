class DaysController < EventsController


  def index
  end

  def show
    @event = Event.find(params[:event_id])

    require 'date'

    date_from  = @event.start_date
    date_to    = @event.end_date
    @date_range = date_from..date_to


    timeslots = Timeslot.order(:venue_id).all
    timeslots = timeslots.select { |t| t.act.event.id == @event.id}

    @day = timeslots.select { |t| t.start_time.day == params[:id].to_i}
    @start_time = @day.first.start_time
    @venues = @day.group_by { |t| t.venue_id }.values

    @booking = Booking.new
  end
  
end
