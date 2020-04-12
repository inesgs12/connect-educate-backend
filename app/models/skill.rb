class Skill < ApplicationRecord
  SKILLS = ['Maths', 'English', 'Physics', 'Chemistry', 'Biology', 'Geography', 'History', 'Programming']

  belongs_to :volunteer

  enum name: Hash[SKILLS.map.with_index { |l, i| [ l, i+1 ] }] 
end
