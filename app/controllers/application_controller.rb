class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :warning, :danger, :info
  before_action :authenticate_user!
  
  # def not_found
  #   raise ActionController::RoutingError.new('Not Found')
  # end
  
end
