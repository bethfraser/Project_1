class DaysController < EventsController


  def index
  end

  def show
    event = Event.find(1)
    timeslots = Timeslot.order(:venue_id).all
    timeslots = timeslots.select { |t| t.act.event.id == 1}

    @day = timeslots.select { |t| t.start_time.day == params[:id].to_i}
    @start_time = @day.first.start_time
    @venues = @day.group_by { |t| t.venue_id }.values

    @booking = Booking.new
  end
  
end
