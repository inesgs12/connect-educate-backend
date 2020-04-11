class Volunteer < User
  has_many :skills
  has_many :languages
end
