class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :profile_answers
  has_many :pokes

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :gender, presence: true
  validates :photo, presence: true

  def positive_age
    date_of_birth < Date.today
  end

  # def last_sign_in_at
  #   super || Time.now + 150
  # end

  def full_name
    "#{first_name} #{last_name}"
  end

  def finished_quiz?
    ProfileAnswer.where(user_id: self.id).count >= 5
  end

  def new_pokes_count
    pokes = Poke.where(receiver: self.id)
    counter = 0
    pokes.each do |poke|
      if poke.seen == false
        counter += 1
      end
    end
    counter
  end

  def new_messages_count
    messages = Message.joins(:poke).where('pokes.sender_id = user_id OR pokes.receiver_id = user_id').where('messages.user_id = user_id')
    counter = 0
    messages.each do |message|
      if message.seen == false
        counter += 1
      end
    end
    counter
  end

  # def sum_notification
  #   new_messages_count + new_pokes_count
  # end

  # def new_messages_count
  #   total_count = 0
  #   Poke.all.each do |poke|
  #     if poke.receiver == self
  #       total_count += poke.user_new_messages_count(self)
  #     end
  #   end
  #   total_count
  # end


end
