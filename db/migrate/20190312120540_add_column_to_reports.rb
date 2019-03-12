class AddColumnToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :reporter_id, :integer
    add_column :reports, :reportee_id, :integer
    add_column :reports, :description, :text
  end
end
