class Message < ApplicationRecord
  belongs_to :poke
  belongs_to :user

  validates :content, presence: true
end
