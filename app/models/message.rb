class Message < ApplicationRecord
  belongs_to :poke_id
  belongs_to :user_id

  validates :content, presence: true
end
