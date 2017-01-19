class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :authenticate_user!


  # Adding to User Params
  # Normally, when adding to a Resource's params, we'd visit its controller - but User has no controller,
  #  so we'll have to work in the application_controller.rb:

before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password,
   :password_confirmation, :username) }

  devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ roles: [] }, :email, :password,
  :password_confirmation, :current_password, :username) }
 end
end
