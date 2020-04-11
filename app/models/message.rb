class Message < ApplicationRecord
  belongs_to :user

  validates :content, :user_id, presence: true
  validates :content, length: { minimum: 1 } 
end
