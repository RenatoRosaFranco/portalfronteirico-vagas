# frozen_string_literal: true

# == Schema Information
#
# Table name: jobs
#
#  id                 :integer          not null, primary key
#  apply_content      :string
#  description        :text
#  expiration         :date
#  how_to_apply       :integer
#  location           :string
#  modality           :integer
#  salary             :float
#  status             :integer
#  title              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  city_id            :integer
#  hiring_type_id     :integer
#  occupation_area_id :integer
#  user_id            :integer
#
# Indexes
#
#  index_jobs_on_city_id             (city_id)
#  index_jobs_on_hiring_type_id      (hiring_type_id)
#  index_jobs_on_occupation_area_id  (occupation_area_id)
#  index_jobs_on_user_id             (user_id)
#
class Job < ApplicationRecord
	self.table_name  = 'jobs'
	self.primary_key = 'id'

	# Relationships
	# @implemented
	belongs_to :occupation_area
	belongs_to :hiring_type
	belongs_to :user

	# Enum
	# @implemented
	enum status: ['active', 'expired']
	enum modality: ['Office', 'Remote']
	enum how_to_apply: ['Email', 'URL']

	# Scope
	# @implemented
	scope :by_title, -> (title) { where("title LIKE ?", "%#{title}%") }
	scope :recents,  -> { where(created_at: :desc) }
	scope :lasts,    -> { where(created_at: :asc) }
	scope :active,   -> { where(status: 'active') }
	scope :expired,  -> { where(status: 'expired') }

	# Callbacks
	# @implemented
	after_create :set_expiration_date

	# Validations
	# @implemented
	validates_uniqueness_of :title, scope: [:user_id]

	validates  :title,
					 	 presence: true,
						 allow_blank: false,
						 length: { minimum: 3, maximum: 45 }

  # Methods
  # @implemented
  def set_expiration_date
  	self.expiration = Date.today + 15.day
  	self.status = 'active'
  	save
  end

  def expire
  	self.status = 'expired'
  	save
  end
end
