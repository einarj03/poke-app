class ChangeAcceptedToStatusInPokes < ActiveRecord::Migration[5.2]
  def change
    remove_column :pokes, :accepted
    add_column :pokes, :status, :string, default: "pending"
  end
end
