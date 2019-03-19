class Message < ApplicationRecord
  belongs_to :poke
  belongs_to :user

  validates :content, presence: true

  def from?(some_user)
    some_user == user
  end
end
