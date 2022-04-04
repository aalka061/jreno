class ApplicationController < ActionController::Base

  def set_services
    @services = Service.all

  end
end
