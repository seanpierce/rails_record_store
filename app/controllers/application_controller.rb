class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def authorize_admin
    if !current_user || current_user.admin != true
      flash[:alert] = "You aren't authorized to visit that page."
      redirect_back(fallback_location: root_path)
    end
  end

  def authorize_user
    if !current_user
      flash[:alert] = "Please log in to access this page"
      redirect_back(fallback_location: root_path)
    end
  end

end
