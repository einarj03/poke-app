class Block < ApplicationRecord
  belongs_to :blocker, class_name: "User", foreign_key: "blocker_id"
  belongs_to :blockee, class_name: "User", foreign_key: "blockee_id"
end
