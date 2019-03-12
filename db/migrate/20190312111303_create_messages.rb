class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :poke_id, foreign_key: true
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end
