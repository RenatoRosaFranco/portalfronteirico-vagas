# frozen_string_literal: true

class AddColumnCityIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :city, foreign_key: true
  end
end
