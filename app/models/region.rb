# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Region < ApplicationRecord
  include RegionFilter

  extend FriendlyId
  friendly_id :name, use: [:slugged]

	self.table_name  = 'regions'
	self.primary_key = 'id'

	# Relationships
	# @implemented
	has_many :states, dependent: :destroy
end
