class HomeController < ApplicationController
  # Set the forbid_login_user method as a before_action
  before_action :forbid_login_user, {only: [:top]}

  def top
  end
  
  def about
  end
end
