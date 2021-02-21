# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/sended
  def sended
    ContactMailer.sended
  end

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/received
  def received
    ContactMailer.received
  end

end
