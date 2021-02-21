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
class OccupationAreaSerializer
  include FastJsonapi::ObjectSerializer
  attributes 
end
