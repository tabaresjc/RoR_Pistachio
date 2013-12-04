class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource



protected

  def layout_by_resource
    if devise_controller? 
      if params[:controller] == "devise/sessions" && (params[:action] == "new" or params[:action] == "create")
        "signin"
      elsif params[:controller] == "devise/registrations" && params[:action] == "new"
        "signup"
      else 
        "application"
      end
    else
      "application"
    end
  end
end
