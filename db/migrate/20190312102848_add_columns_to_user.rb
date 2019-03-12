class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :description, :text
    add_column :users, :date_of_birth, :date
    add_column :users, :gender, :string
    add_column :users, :search_gender, :string
    add_column :users, :interest_gender, :string
    add_column :users, :longitude, :float
    add_column :users, :latitude, :float
    add_column :users, :location_updated_at, :date
  end
end
