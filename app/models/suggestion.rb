class Suggestion < ApplicationRecord
  validates :content, presence: true
  validates :for, presence: true
end
