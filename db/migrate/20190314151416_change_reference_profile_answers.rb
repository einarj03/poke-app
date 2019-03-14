class ChangeReferenceProfileAnswers < ActiveRecord::Migration[5.2]
  def change
    add_reference :profile_answers, :question, index: true
  end
end
