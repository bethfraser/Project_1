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

    render template: template_to_render
  end


  def edit 
    @event = Event.find(params[:id])
  end

  def new 
    @event = Event.new
    render layout: false
  end

  def create
    Event.create(event_params)
    redirect_to events_path
  end


  def update
    event = Event.find(params[:id])
    event.update(event_params)
    redirect_to event_path(event)
  end

  private

    def template_to_render
      if template_exists?("../../themes/#{@event.theme}/home")
        "../../themes/#{@event.theme}/home"
      else
        "/events/home"
      end
    end

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
