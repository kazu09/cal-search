class ApplicationController < ActionController::Base

  # 新規登録後リダイレクト先--user_path(current_user)
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
