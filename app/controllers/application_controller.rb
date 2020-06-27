class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def CurrentUser
    if current_u
      current_u
    elsif current_admin
      current_admin
    else
      User.new
    end
  end

  def set_user
    @user = User
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :username, :age, :email, :password, :flyer])
  end
end
