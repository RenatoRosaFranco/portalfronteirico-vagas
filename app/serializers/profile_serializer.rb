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
#  slug             :string
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
class ProfileSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :logo, :name, :phone, :responsible_name,
             :about, :website, :slug

  belongs_to :user
end
