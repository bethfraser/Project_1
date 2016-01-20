  class SessionsController < Devise::SessionsController 
    before_filter :set_theme
    before_action :load_event



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
    
  def load_event
    if params[:event_id]
    @event = Event.find(params[:event_id])
    else

    @event = Event.find(params[:user][:event_id])
    end
  end
end
