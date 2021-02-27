# frozen_string_literal: true

# == Schema Information
#
# Table name: jobs
#
#  id                 :integer          not null, primary key
#  apply_content      :string
#  description        :text
#  expiration         :date
#  featured           :boolean
#  how_to_apply       :integer
#  location           :string
#  modality           :integer
#  salary             :float
#  slug               :string
#  status             :integer
#  title              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  city_id            :integer
#  deficiency_id      :integer
#  hiring_type_id     :integer
#  occupation_area_id :integer
#  user_id            :integer
#
# Indexes
#
#  index_jobs_on_city_id             (city_id)
#  index_jobs_on_deficiency_id       (deficiency_id)
#  index_jobs_on_hiring_type_id      (hiring_type_id)
#  index_jobs_on_occupation_area_id  (occupation_area_id)
#  index_jobs_on_user_id             (user_id)
#
class JobSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :salary, :modality,
             :featured, :how_to_apply, :location, :status,
             :expiration, :apply_content, :slug

  belongs_to :occupation_area
  belongs_to :hiring_type
  belongs_to :city
  belongs_to :user
end
