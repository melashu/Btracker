class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(_resource)
    user_catagories_path(current_user)
  end

  def must_log!
    redirect_to user_session_path if current_user.nil?
  end

  protected

  #  def param_checker
  #       params.require(:user).permit(:icon, :name, :user_id)
  #   end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name photo])
  end
end
