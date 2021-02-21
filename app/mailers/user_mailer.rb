# frozen_string_literal: true

class UserMailer < ApplicationMailer
	default from: 'no-reply@portalfronteirico.com'

	def welcome_user(user)
		@user = user
		mail to: "to@example.org"
	end
end
