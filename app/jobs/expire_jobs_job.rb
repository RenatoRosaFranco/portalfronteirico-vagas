# frozen_string_literal: true

class ExpireJobsJob < ApplicationJob
	def perform
		Job.active.each do |job|
			if (job.expiration > Date.today)
				job.expire
			end
		end
	end
end