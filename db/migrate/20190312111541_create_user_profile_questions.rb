class CreateUserProfileQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_questions do |t|
      t.references :suggestion, foreign_key: true
      t.references :user, foreign_key: true
      t.text :answer

      t.timestamps
    end
  end
end
