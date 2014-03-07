class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      Inquiry.send_message(@contact).deliver
      redirect_to root_path,
        flash: { success: "Your message has been sent. We'll get in touch with you shortly." }
    else
      render :new,
        flash: { alert: "Please try again." }
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :subject, :message)
  end
end
