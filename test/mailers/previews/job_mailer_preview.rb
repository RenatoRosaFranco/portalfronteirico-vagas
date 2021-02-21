# Preview all emails at http://localhost:3000/rails/mailers/job_mailer
class JobMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/job_mailer/application_sended
  def application_sended
    JobMailer.application_sended
  end

  # Preview this email at http://localhost:3000/rails/mailers/job_mailer/application_received
  def application_received
    JobMailer.application_received
  end

end
