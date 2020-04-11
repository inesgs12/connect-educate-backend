class Post < ApplicationRecord
  belongs_to :user
  has_many :posts_skills
  has_many :skills, through: :posts_skills
  has_many :posts_languages
  has_many :langauges, through: :posts_languages

  validates :content, :title, presence: true
  validates :content, length: { minimum: 5 }
end
