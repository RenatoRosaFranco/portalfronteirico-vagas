# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  admin                  :boolean
#  deleted_at             :datetime
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_deleted_at            (deleted_at)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  include UserFilter

	include Filterable, Mailerable

  self.table_name  = 'users'
  self.primary_key = 'id'

  # Dependencies
  # @implemented
  acts_as_paranoid

  # Relationships
  # @implemented
  has_one :profile, dependent: :destroy
  has_many :jobs, dependent: :destroy

	# Callbacks
  # @implemented
	after_create :create_profile, :welcome_user

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise 	:database_authenticatable, :registerable,
         	:recoverable, :rememberable, :validatable

  # Methods
  # @implemented
  def welcome_user
  	mail_to(UserMailer, :welcome)
  end
end
