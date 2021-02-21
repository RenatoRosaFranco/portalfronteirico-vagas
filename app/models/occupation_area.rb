# frozen_string_literal: true

# == Schema Information
#
# Table name: occupation_areas
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class OccupationArea < ApplicationRecord
	self.table_name  = 'occupation_areas'
	self.primary_key = 'id'

	# Relationships
	# @implemented
	has_many :jobs, dependent: :destroy

	# Validations
	# @implemented
	validates :name,
						uniqueness: true,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }
end
