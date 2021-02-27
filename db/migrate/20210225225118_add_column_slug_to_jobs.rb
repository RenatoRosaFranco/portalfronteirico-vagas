# frozen_string_literal: true

class AddColumnSlugToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :slug, :string
  end
end
