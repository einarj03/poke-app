class AddQuestionToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :question, index: true
  end
end
