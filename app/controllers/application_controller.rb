class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from 'MyAppError::Base' do |exception|
    render_500 exception
  end

  rescue_from ActiveRecord::RecordNotFound, :with => :render_404
  rescue_from ActionController::RoutingError, :with => :render_404
  rescue_from ActionView::MissingTemplate, :with => :render_404

  def render_404
    render_optional_error_file(404)
  end

  def render_403
    render_optional_error_file(403)
  end

  def render_500 exception
    ExceptionNotifier.notify_exception(exception, env: Rails.env)
    render_optional_error_file(500)
  end

  def render_optional_error_file(status_code)
    status = status_code.to_s
    if ["404","403", "422", "500"].include?(status)
      render :file => "/public/#{status}.html", :format => [:html], :handler => [:erb], :status => status, :layout => "application"
    else
      # render :template => "/errors/unknown", :format => [:html], :handler => [:erb], :status => status, :layout => "application"
    end
  end

end
