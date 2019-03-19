class Question < ApplicationRecord
  validates :content, presence: true

  def answered?(user)
    ProfileAnswer.find_by(user_id: user.id, question_id: self.id)
  end

  def previous
    Question.where(["id < ?", self.id]).order(:id).last
  end

  def next
    Question.where(["id > ?", self.id]).order(:id).first
  end
end
