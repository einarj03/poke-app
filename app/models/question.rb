class Question < ApplicationRecord
  belongs_to :profile_answer
  validates :content, presence: true
end
