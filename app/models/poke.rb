class Poke < ApplicationRecord
  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
  has_many :messages
  validates :content, presence: true

  def poke_created_time
    t = (Time.now - self.created_at).to_i
    Time.at(t).strftime("%l\h %M\m %S\s")
  end

  # def poke_time_left
  #   m = Time.now + 12.hours - self.created_at
  #   Time.at(m.strftime("%l\h %M\m %S\s")
  # end
end
