# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  capital    :boolean
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  state_id   :integer
#
# Indexes
#
#  index_cities_on_state_id  (state_id)
#
class City < ApplicationRecord
  include CityFilter

  extend FriendlyId
  friendly_id :name, use: [:slugged]

 	self.table_name  = 'cities'
 	self.primary_key = 'id'

	# Relationships
	# @implemented
	has_many :jobs, dependent: :destroy
  belongs_to :state
end
