class CreateUserProfileAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_answers do |t|
      t.references :user, foreign_key: true
      t.text :answer

      t.timestamps
    end
  end
end
