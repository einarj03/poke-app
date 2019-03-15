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

  # def time_left
  #   m = Time.now + 12.hours - self.created_at
  #   Time.at(m.strftime("%lh%Mm%Ss")
  # end
end
