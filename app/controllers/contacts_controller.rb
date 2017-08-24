class ContactsController < ApplicationController
skip_before_action :authenticate_user!, only: :create

  def create
    contact = Contact.new(contact_params)
    if user_signed_in?
      contact.name = "#{current_user.first_name} #{current_user.last_name}"
      contact.email = current_user.email
      contact.user = current_user
    end
    contact.save
    flash[:notice] = "We've received your message! You will be hearing from us soon!"
    redirect_to root_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
