# frozen_string_literal: true

class AddColumnSalaryToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :salary, :float
  end
end
