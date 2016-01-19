class EventsController < ContentController
  
  before_action :authenticate_user!, except: :index

  def index
    @event = Event.find(1)
  end

  def show
    @event = Event.find(params[:id])
    @booking = Booking.new
  end

  def info

  end

  def edit 
    @event = Event.find(1)
  end

  def update
    event = Event.find(1)
    event.update(event_params)
    redirect_to event_path(1)
  end

  private

  def event_params
    params.require(:event).permit(:name, :start_date, :location, :end_date, :description, :theme)  
  end
  
end
