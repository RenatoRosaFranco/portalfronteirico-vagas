# frozen_string_literal: true

# == Schema Information
#
# Table name: occupation_areas
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class OccupationAreaSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :slug

  has_many :jobs
end
