class CreatePokes < ActiveRecord::Migration[5.2]
  def change
    create_table :pokes do |t|
      t.text :content
      t.boolean :accepted
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
