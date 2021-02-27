# frozen_string_literal: true

class ContactController <:: ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)
    if (contact.valid? && verify_recaptcha(model: contact)) then
      contact.send_email
      flash[:notice] = 'Mensagem enviada com sucesso.'
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).
      permit(:name, :phone, :email, :subject, :message)
  end
end
