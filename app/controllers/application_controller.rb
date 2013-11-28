class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource



  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

protected

  def layout_by_resource
    if devise_controller? 
      if params[:controller] == "devise/sessions" && params[:action] == "new"
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
