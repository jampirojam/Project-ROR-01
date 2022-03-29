class ApplicationController < ActionController::Base
    # Set the set_current_user method as a before_action
    before_action :set_current_user
    
    # Define the set_current_user method
    def set_current_user
      @current_user = User.find_by(id: session[:user_id])
    end
  
  end
  