# frozen_string_literal: true

class AddColumnSlugToHiringTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :hiring_types, :slug, :string
  end
end
