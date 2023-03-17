class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:new, :create]

  def index
    if user_signed_in?
      redirect_to dashboard_path # Replace with the path to your dashboard page
    else
      redirect_to new_user_session_path # Redirect to the login page
    end
  end
end
