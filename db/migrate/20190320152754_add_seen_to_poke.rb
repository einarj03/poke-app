class AddSeenToPoke < ActiveRecord::Migration[5.2]
  def change
    add_column :pokes, :seen, :boolean, default: false
  end
end
