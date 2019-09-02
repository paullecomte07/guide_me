class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :first_name, :last_name, :address, :avatar) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :first_name, :last_name, :address, :avatar) }
  end
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || dashboard_path
  end
  def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end
end
