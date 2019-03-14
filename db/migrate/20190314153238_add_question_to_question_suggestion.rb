class AddQuestionToQuestionSuggestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :question_suggestions, :question, index: true
  end
end
