# frozen_string_literal: true

class CreateOccupationAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :occupation_areas do |t|
      t.string 	 :name

      t.timestamps
    end
  end
end
