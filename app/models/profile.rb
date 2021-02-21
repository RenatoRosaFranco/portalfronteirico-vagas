# frozen_string_literal: true

# == Schema Information
#
# Table name: profiles
#
#  id               :integer          not null, primary key
#  about            :text
#  logo             :string
#  name             :string
#  phone            :string
#  responsible_name :string
#  website          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  city_id          :integer
#  user_id          :integer
#
# Indexes
#
#  index_profiles_on_city_id  (city_id)
#  index_profiles_on_user_id  (user_id)
#
class Profile < ApplicationRecord
  self.table_name  = 'profiles'
  self.primary_key = 'id'

  # Attachment
  # @implemented
  has_one_attached :logo
  belongs_to :city

  # Relationship
  # @implemented
  belongs_to :user
end
