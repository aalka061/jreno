class PagesController < ApplicationController
  before_action :set_services

  def homepage
    @services = Service.all
    @contact = Contact.new
  end

  def contactpage

  end
end
