class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist
  validates :type, presence: true
  validates :first_name, presence: true

  has_many :messages
end
