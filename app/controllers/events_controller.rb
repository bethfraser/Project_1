class EventsController < ApplicationController
  
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
  
end
