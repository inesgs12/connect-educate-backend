class PostsSkill < ApplicationRecord
  belongs_to :post
  belongs_to :skill
end
