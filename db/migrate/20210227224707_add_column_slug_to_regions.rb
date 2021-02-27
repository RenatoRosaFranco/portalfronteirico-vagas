# frozen_string_literal: true

class AddColumnSlugToRegions < ActiveRecord::Migration[5.2]
  def change
    add_column :regions, :slug, :string
  end
end
