# == Schema Information
#
# Table name: newsletters
#
#  id          :integer          not null, primary key
#  cancel_date :date
#  email       :string
#  modality    :integer
#  signup_date :date
#  status      :boolean
#  token       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class NewsletterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
