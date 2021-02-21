# frozen_string_literal: true

class AddColumnOccupationAreaIdAndHiringTypeIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :occupation_area, foreign_key: true
    add_reference :jobs, :hiring_type, foreign_key: true
  end
end
