class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :type, presence: true

  scope :parents, -> { where(type: :parent) }
  scope :volunteers, -> { where(type: :volunteer) }
end
