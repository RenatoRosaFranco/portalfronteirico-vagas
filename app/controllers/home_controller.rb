# frozen_string_literal: true

class HomeController <:: ApplicationController
	def index
		@jobs = Job.where(nil)
	end
end