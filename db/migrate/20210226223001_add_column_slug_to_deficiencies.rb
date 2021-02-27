class AddColumnSlugToDeficiencies < ActiveRecord::Migration[5.2]
  def change
    add_column :deficiencies, :slug, :string
  end
end
