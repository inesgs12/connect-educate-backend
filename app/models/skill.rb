class Skill < ApplicationRecord
  belongs_to :volunteer
  has_many :languages
end
