class AddColumnToBlocks < ActiveRecord::Migration[5.2]
  def change
    add_column :blocks, :blocker_id, :integer
    add_column :blocks, :blockee_id, :integer
  end
end
