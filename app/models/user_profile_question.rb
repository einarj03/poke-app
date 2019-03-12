class UserProfileQuestion < ApplicationRecord
  belongs_to :suggestion
  belongs_to :user

  validates :answer, presence: true
end
