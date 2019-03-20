class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable #, :trackable

  has_many :profile_answers
  has_many :pokes
  # has_many :messages, through: :pokes

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :gender, presence: true
  validates :photo, presence: true

  def positive_age
    date_of_birth < Date.today
  end

  def last_sign_in_at
    super || Time.now + 150
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def finished_quiz?
    ProfileAnswer.where(user_id: self.id).count >= 5
  end

  def new_pokes_count
    pokes = Poke.where(receiver: self)
    pokes.count do |poke|
      poke.created_at > self.last_sign_in_at
    end
  end

  def new_messages_count
    total_count = 0
    Poke.all.each do |poke|
      if poke.receiver == self || poke.sender == self
        total_count += poke.user_new_messages_count(self)
      end
    end
    total_count
  end


end
