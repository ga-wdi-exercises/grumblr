class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_access_control_headers
    header['Access-Control-Allow-Origin'] = "*"
    header['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(", ")
  end

  def index
    render layout: 'application', text: ''
  end
end
