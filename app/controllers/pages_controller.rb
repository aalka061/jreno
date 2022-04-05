class PagesController < ApplicationController
  # before_action :set_services
  before_action :set_footer
  def homepage
    @services = Service.all
    @contact = Contact.new
  end

  def contactpage
    @contact = Contact.new
  end
end
