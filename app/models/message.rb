class Message < ApplicationRecord
  belongs_to :poke
  belongs_to :user

  validates :content, presence: true

  after_create :broadcast_message

  def from?(some_user)
    some_user == user
  end

  def broadcast_message
    ActionCable.server.broadcast("chat_room_#{poke.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message",
        locals: { message: self, user_is_messages_author: false }),
      current_user_id: user.id
    })
  end
end
