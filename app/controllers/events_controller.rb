class EventsController < ApplicationController
  before_filter :set_theme

  before_action :authenticate_user!, except: [:index, :home]

  def index
    @events = Event.all
    render layout: false
  end

  def show
    @event = Event.find(params[:id])

    require 'date'

    date_from  = @event.start_date
    date_to    = @event.end_date
    @date_range = date_from..date_to

    @days = @date_range.map(&:mday)

    @booking = Booking.new
  end

  def info
    @event = Event.find(params[:id])
  end

  def home
    @event = Event.find(params[:id])
  end


  def edit 
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    event.update(event_params)
    redirect_to event_path(event)
  end

  private

  def set_theme
    if params[:event_id]
    event = Event.find(params[:event_id])
  elsif params[:id]
    event = Event.find(params[:id])
  else
    return
end
    theme = event.theme
    prepend_view_path "app/themes/#{theme}"
    self.class.layout "../../themes/#{theme}/layout"
  end

  def event_params
    params.require(:event).permit(:name, :start_date, :location, :end_date, :description, :theme)  
  end
  
end
