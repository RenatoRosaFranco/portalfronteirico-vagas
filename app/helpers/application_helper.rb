# frozen_string_literal: true

module ApplicationHelper

	def has_errors?(model)
		return nil
	end

  def owner?(object)
    current_user.eql? (object.user)
  end
end
