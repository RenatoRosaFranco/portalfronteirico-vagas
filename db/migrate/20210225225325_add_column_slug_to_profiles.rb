class AddColumnSlugToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :slug, :string
  end
end
