class Message < ApplicationRecord
  belongs_to :poke
  belongs_to :user
end
