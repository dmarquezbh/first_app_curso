class WelcomeController < ApplicationController
  protect_from_forgery

  #layout 'application_black', :only => :black

  def index
  end

  def black
  	render :layout => 'application_black'
  end
end
