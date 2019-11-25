class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def configure_permitted_parameters
      # For additional in app/views/devise/registrations/edit.html.erb
      devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
