class ApplicationController < ActionController::Base

  def set_services
    @services = Service.all

  end

  def set_footer
    @show_footer = true
    @services = Service.all

  end
end
