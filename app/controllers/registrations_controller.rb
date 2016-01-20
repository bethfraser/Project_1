  class RegistrationsController < Devise::RegistrationsController 
    before_filter :set_theme
    before_action :load_event


  def edit 
  @event = Event.find(params[:event_id])
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :login_code, :user_image, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:user_image, :name, :email, :password, :password_confirmation, :current_password)
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
    
  def load_event
    @event = Event.find(params[:event_id])
  end
end
