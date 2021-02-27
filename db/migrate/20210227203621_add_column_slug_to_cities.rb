class AddColumnSlugToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :slug, :string
  end
end
