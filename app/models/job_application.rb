# frozen_string_literal: true

class JobApplication < Object
	include ActiveModel::Conversion
	include ActiveModel::Validations
	include Mailerable

	# Accessors
	# @implemented
	attr_accessor :name, :email, :salary, :cv_field, :short_letter

	# Initialization
	# @implemented
	def initialize(params ={})
		@name = params[:name]
		@email = params[:email]
		@salary = params[:salary]
		@cv_field = params[:cv_field]
		@short_letter = params[:short_letter]

		@mailer = JobMailer
	end

	# Methods
	# @implemented
	def send_email
		mail_to(@mailer, :application_sended)
		mail_to(@mailer, :application_received)
	end

	def persisted?
		false
	end

	# Validations
	# @implemented
	validates :name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :email,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 245 }

	validates :salary,
						presence: true,
						uniqueness: false,
						allow_blank: false

	validates :cv_field,
						presence: true,
						uniqueness: false,
						allow_blank: false

	validates :short_letter, 
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }
end