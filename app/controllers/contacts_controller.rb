class ContactsController < ApplicationController
  before_action :set_services

  def new
   @contact = Contact.new
 end

 def create
   @contact = Contact.new(params[:contact])
   @contact.request = request
   @error = ""
   unless @contact.deliver
     flash.now[:error] = 'Could not send message'
     render :new
   end
 end
end
