# frozen_string_literal: true

class CreateHiringTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :hiring_types do |t|
      t.string 	 :name

      t.timestamps
    end
  end
end
