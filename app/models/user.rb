class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :profile_answers
  has_many :pokes

  mount_uploader :photo, PhotoUploader

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :gender, presence: true

  def positive_age
    date_of_birth < Date.today
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def finished_quiz?
    ProfileAnswer.where(user_id: self.id).count >= 5
  end
end
