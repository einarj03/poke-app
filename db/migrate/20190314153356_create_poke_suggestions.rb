class CreatePokeSuggestions < ActiveRecord::Migration[5.2]
  def change
    create_table :poke_suggestions do |t|
      t.text :content
      t.timestamps
    end
  end
end
