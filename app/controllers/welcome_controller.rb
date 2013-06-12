class WelcomeController < ActionController::Base
  protect_from_forgery

  def index
  end

  def black
    render :layout => 'application_black'
  end
end
