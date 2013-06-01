class Admin::BaseController < ApplicationController
  layout "admin"
  before_filter :check_session

  def check_session
    unless session[:user]
      redirect_to  :controller => "/user", :action => "login"
    end
  end
end
