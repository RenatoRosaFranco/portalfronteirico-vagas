class AddColumnDeficiencyIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :deficiency, foreign_key: true
  end
end
