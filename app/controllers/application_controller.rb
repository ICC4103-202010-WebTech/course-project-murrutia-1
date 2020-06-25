class ApplicationController < ActionController::Base
  before_action :set_user
  before_action :current_user
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :mailbox, :conversation

  private

  def mailbox
    @mailbox ||= current_user.mailbox
  end

  def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end


  protected

  def set_user
    @user = User
  end
  def current_user
    @current_user = User.first
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :username, :age, :email, :password, :flyer])
  end
end
