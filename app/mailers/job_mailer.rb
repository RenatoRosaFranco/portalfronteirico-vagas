# frozen_string_literal: true

class JobMailer < ApplicationMailer

  default from: 'no-reply@portalfronteirico.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.job_mailer.application_sended.subject
  #
  def application_sended(application)
    @application = application
    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.job_mailer.application_received.subject
  #
  def application_received(application)
    @application = application
    mail to: "to@example.org"
  end
end
