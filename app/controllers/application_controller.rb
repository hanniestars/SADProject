class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource

  protected

  def layout_by_resource
  	if devise_controller?
  		"landing"
  	else
  		"application"
  	end
  end

  def index
    @sales = Sale.all    
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) }
  end
end
