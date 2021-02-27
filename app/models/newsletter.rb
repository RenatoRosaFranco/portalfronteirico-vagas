# == Schema Information
#
# Table name: newsletters
#
#  id          :integer          not null, primary key
#  cancel_date :date
#  email       :string
#  modality    :integer
#  signup_date :date
#  status      :boolean
#  token       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Newsletter < ApplicationRecord
  include NewsletterFilter

  include Mailerable

  self.table_name = 'newsletters'
  self.primary_key = 'id'

  # Enum
  # @implemented
  enum modality: ['Daily', 'Weekly', 'Monthly']

  # Callbacks
  # @implemented
  after_create :signup

  # Validations
  # @implemented
  validates :email,
            presence: true,
            uniqueness: true,
            allow_blank:false,
            length: { minimum: 3, maximum: 245 }

 validates  :token,
            uniqueness: true

  # Methods
  # @implemented
  def signup
    set_token
    set_status(true)
    set_signup_date
    save!

    #send_email(:signup)
  end

  def cancel
    set_token(nil)
    set_status(false)
    set_cancel_date
    save!

    #send_email(:cancel)
  end

  # Private Methods
  # @implemented
  private

  def set_token(token = SecureRandom.urlsafe_base64)
    self.token = token
  end

  def set_status(status = true)
    self.status = status
  end

  def set_date(field, date)
    self.send("#{field.to_sym}=", date)
  end

  def set_signup_date(date = Date.today)
    set_date(:signup_date, date)
  end

  def set_cancel_date(date = Date.today)
    set_date(:cancel_date, date)
  end

  def send_email(action)
    mail_to(NewsletterMailer, action)
  end
end
