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
class Deficiency < ApplicationRecord
  include DeficiencyFilter

  include FriendlyId
  friendly_id :name, use: [:slugged]

  self.table_name  = 'deficiencies'
  self.primary_key = 'id'

  has_many :jobs, dependent: :nullify
end
