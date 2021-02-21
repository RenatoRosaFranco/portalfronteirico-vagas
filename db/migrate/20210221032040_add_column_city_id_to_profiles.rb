class AddColumnCityIdToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_reference :profiles, :city, foreign_key: true
  end
end
