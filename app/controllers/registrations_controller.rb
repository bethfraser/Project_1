class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :login_code, :user_image, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:user_image, :name, :email, :password, :password_confirmation, :current_password)
  end
end