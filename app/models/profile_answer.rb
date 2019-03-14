class ProfileAnswer < ApplicationRecord
  has_one :question
  belongs_to :user

  validates :answer, presence: true
end
