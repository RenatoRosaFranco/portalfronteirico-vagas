class AddColumnFeaturedToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :featured, :boolean
  end
end
