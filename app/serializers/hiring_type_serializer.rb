# frozen_string_literal: true

# == Schema Information
#
# Table name: hiring_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class HiringTypeSerializer
  include FastJsonapi::ObjectSerializer
  attributes 
end
