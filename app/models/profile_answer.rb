class ProfileAnswer < ApplicationRecord
  belongs_to :question_suggestion
  belongs_to :user

  validates :answer, presence: true
end
