# == Schema Information
#
# Table name: deficiencies
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class DeficiencySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :slug
end
