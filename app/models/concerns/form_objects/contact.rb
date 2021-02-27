# frozen_string_literal: true

class Contact < Object
	include ActiveModel::Conversion
	include ActiveModel::Validations
	include Mailerable

	attr_accessor :name, :phone, :email, :subject, :message

	# Initialization
	# @implemented
	def initialize
		@name = params[:name]
		@phone = params[:phone]
		@email = params[:email]
		@subject = params[:subject]
		@message = params[:message]

		@mailer = ContactMailer
	end

	# Methods
	# @implemented
	def send_email
		mail_to(@mailer, :sended)
		mail_to(@mailer, :received)
	end

	def persisted?
		false
	end

	# Validations
	# @implemented
	validates :name,
						presence: true,
						uniqueness:false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :phone,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 15 }

	validates :email,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 245 }

  validates :subject,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 60 }

  validates :message,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 4_500 }
end