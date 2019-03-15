class Question < ApplicationRecord
  validates :content, presence: true

  def answered?(user)
    ProfileAnswer.find_by(user_id: user.id, question_id: self.id)
  end

end
