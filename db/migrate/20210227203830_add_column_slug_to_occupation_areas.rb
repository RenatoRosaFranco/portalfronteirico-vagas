# frozen_string_literal: true

class AddColumnSlugToOccupationAreas < ActiveRecord::Migration[5.2]
  def change
    add_column :occupation_areas, :slug, :string
  end
end
