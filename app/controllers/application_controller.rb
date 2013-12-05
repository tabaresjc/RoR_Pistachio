class ApplicationController < ActionController::Base
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # layout :layout_by_resource

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

protected

  def layout_by_resource
    if devise_controller? 
      if params[:controller] == "devise/sessions" && (params[:action] == "new" or params[:action] == "create")
        "signin"
      elsif params[:controller] == "devise/registrations" && (params[:action] == "new" or params[:action] == "create")
        "signup"
      else 
        "application"
      end
    else
      "application"
    end
  end
end
