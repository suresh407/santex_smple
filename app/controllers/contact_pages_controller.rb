class ContactPagesController < ApplicationController
 
 def new
 @message =  ContactPage.new
 end

 def create
  @message = ContactPage.new(params[:message])
  @message.save
  redirect_to contact_pages_path
end
end
