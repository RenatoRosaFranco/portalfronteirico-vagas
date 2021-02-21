# frozen_string_literal: true

class AddColumnJobInfoToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :modality, :integer
    add_column :jobs, :location, :string
    add_column :jobs, :how_to_apply, :integer
    add_column :jobs, :apply_content, :string
  end
end
