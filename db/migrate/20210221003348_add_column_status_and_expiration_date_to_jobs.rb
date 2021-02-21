# frozen_string_literal: true

class AddColumnStatusAndExpirationDateToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :status, :integer
    add_column :jobs, :expiration, :date
  end
end
