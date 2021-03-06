class Task < ApplicationRecord
  belongs_to :parent
  belongs_to :volunteer, optional: true

  validates :content, :parent_id, :skill, presence: true
  validates :content, length: { minimum: 5 }
end
