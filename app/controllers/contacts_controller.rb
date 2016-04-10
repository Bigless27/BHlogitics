class ContactsController < ApplicationController

 skip_before_action :verify_authenticity_token
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(first_name:params[:first_name], last_name:params[:last_name],email: params[:email],phone: params[:phone],city: params[:city],state: params[:state],message: params[:message], nickname: params[:nickname])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to '/'
    else
      flash[:error] = 'Cannot send message.'
      redirect_to '/'
    end
  end
end
