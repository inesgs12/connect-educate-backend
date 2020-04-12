class User < ApplicationRecord
  acts_as_token_authenticatable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :type, presence: true
  validates :first_name, presence: true

  has_many :messages

  def volunteer?
    type == "Volunteer"
  end

  def parent?
    type == "Parent"
  end
end
