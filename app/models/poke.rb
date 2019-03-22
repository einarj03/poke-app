class Poke < ApplicationRecord
  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
  has_many :messages
  validates :content, presence: true

  def created_time
    t = DateTime.now - created_at.to_datetime
    hours = (t * 24).to_i
    minutes = (t * 24 * 60).to_i
    seconds = (t * 24 * 60 * 60).to_i
    if hours.positive?
      output = "#{hours}h ago"
      return output
    elsif minutes.positive?
      output = "#{minutes}m ago"
      return output
    else
      output = "#{seconds}s ago"
      return output
    end
  end

  def sender_or_receiver(user)
    receiver == user ? :receiver_last_visit : :sender_last_visit
  end

  def new_messages_for(user)
    last_visit = send(sender_or_receiver(user))
    messages.where.not(user_id: user.id).count do |msg|
      msg.created_at > last_visit
    end
  end

  def update_last_seen(user)
    attribute = sender_or_receiver(user)
    update_attribute(attribute, DateTime.now)
    save
  end

  def time_left
    t = created_at.to_datetime + 2.hours - DateTime.now
    hours = (t * 24).to_i
    minutes = (t * 24 * 60).to_i
    seconds = (t * 24 * 60 * 60).to_i
    if hours.positive?
      output = "#{hours}h left"
      return output
    elsif minutes.positive?
      output = "#{minutes}m left"
      return output
    elsif seconds.positive?
      output = "#{seconds}s left"
      return output
    else
      output = "Expired"
      return output
    end
  end



  # def new_message?(current_user)
  #   messages = self.messages.where.not(user_id: current_user.id)
  #   if messages.last != nil
  #     return true if messages.last.created_at > current_user.last_sign_in_at
  #   end
  # end
end
