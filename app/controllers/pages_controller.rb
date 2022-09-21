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

  def construction
    @contact = Contact.new
  end

  def projects
    @type = params[:type]
    @type = @type.downcase if @type
    @pictures = Picture.filter_by_type(@type)
  end
end
