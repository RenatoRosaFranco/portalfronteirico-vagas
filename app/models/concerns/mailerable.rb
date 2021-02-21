# frozen_string_literal: true

module Mailerable
	include ActiveSupport::Concern

	def mail_to(mailer, action, object = self, deliver_method = :deliver_now)
		logger = Rails.logger

		begin
			mailer.send(action, object).send(deliver_method)
		rescue Exception => e
			logger.warn e
			raise StandardError, e
		end
	end
end