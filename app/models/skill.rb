class Skill < ApplicationRecord
  belongs_to :volunteer

  enum name: { maths: 0, english: 1, physics: 2, chemistry: 3, biology: 4, geography: 5, history: 6, computer_science: 7 }
end
