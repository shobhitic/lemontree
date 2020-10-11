class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    if params[:action] == 'update'
      devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    else
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
  end
end
