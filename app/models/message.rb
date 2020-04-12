class Message < ApplicationRecord
  belongs_to :user
  belongs_to :task

  validates :content, :user_id, :task_id, presence: true
  validates :content, length: { minimum: 1 }
end
