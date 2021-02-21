# frozen_string_literal: true

class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table   :profiles do |t|
      t.string     :logo
      t.string     :name
      t.string     :phone
      t.text       :about
      t.string     :website
      t.string     :responsible_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
